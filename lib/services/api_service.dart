import 'dart:async';
import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:resume_plus_clean/models/summary.dart' as model;
import 'package:resume_plus_clean/services/storage_service.dart';
import 'package:resume_plus_clean/models/universite.dart';
import 'package:resume_plus_clean/models/promotion.dart';
import 'package:resume_plus_clean/models/filiere.dart';
import 'package:resume_plus_clean/utils/logger.dart';
import 'package:resume_plus_clean/exceptions/api_exception.dart';
import 'package:resume_plus_clean/services/demo_data_service.dart';

class ApiService {
  final Dio _dio;
  final StorageService _storageService;
  
  static const String productionUrl = 'https://resumecours.gestionhospitaliare.site/api';
  
  static String get developmentUrl {
    if (kIsWeb) {
      return 'http://127.0.0.1:8000/api';
    }
    return 'http://172.16.1.253:8000/api';
  }
  
  static const bool isProduction = true; // Forcer la production
  static String get baseUrl => productionUrl; // Toujours utiliser l'URL de production
  
  // Système robuste de refresh token sans concurrence
  Completer<String?>? _refreshCompleter;
  String? _currentAccessToken;
  String? _currentRefreshToken;
  
  // Cache avec expiration (10 minutes)
  static const Duration _cacheExpiration = Duration(minutes: 10);
  DateTime? _cacheTimestamp;
  
  List<Universite>? _cachedUniversites;
  Map<int, List<Filiere>> _cachedFilieresByUniversite = {};
  Map<int, List<Promotion>> _cachedPromotionsByFiliere = {};

  ApiService({Dio? dio, StorageService? storageService})
      : _dio = dio ?? Dio(BaseOptions(baseUrl: baseUrl)),
        _storageService = storageService ?? StorageService() {
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: _onRequest,
      onError: _onError,
      onResponse: _onResponse,
    ));
  }

  /// Réinitialise complètement la session en mémoire (utilisé lors du logout)
  void clearSession() {
    _currentAccessToken = null;
    _currentRefreshToken = null;
    _refreshCompleter = null;
    _cachedUniversites = null;
    _cachedFilieresByUniversite.clear();
    _cachedPromotionsByFiliere.clear();
    _cacheTimestamp = null;
    print('🧹 [API] Session en mémoire réinitialisée avec succès');
  }

  Future<void> _onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final publicEndpoints = [
      '/auth/login/',
      '/auth/register/',
      '/auth/password/reset/',
      '/auth/token/refresh/',
      '/auth/forgot-password/',
      '/auth/verify-reset-code/',
      '/auth/reset-password/',
      '/auth/otp/request/',
      '/auth/otp/verify/',
      '/courses/universites/',
      '/courses/promotions/',
      '/courses/filieres/',
    ];
    
    final isPublicEndpoint = publicEndpoints.any((endpoint) => options.path.endsWith(endpoint));
    
    if (!isPublicEndpoint) {
      String? token = _currentAccessToken;
      if (token == null) {
        try {
          token = await _storageService.accessToken;
          _currentAccessToken = token;
          print('🔑 [API] Token récupéré depuis storage: ${token != null ? "✅" : "❌ NULL"}');
        } catch (e) {
          AppLogger.error('Erreur storage dans _onRequest', e);
          print('❌ [API] Erreur storage token: $e');
        }
      } else {
        print('🔑 [API] Token depuis mémoire: ✅');
      }
      
      if (token != null) {
        options.headers['Authorization'] = 'Bearer $token';
        print('🔑 [API] Token ajouté pour ${options.path}');
      } else {
        print('⚠️ [API] PAS DE TOKEN pour ${options.path}');
      }
    } else {
      print('🌐 [API] Endpoint public: ${options.path}');
    }
    
    handler.next(options);
  }

  void _onResponse(Response response, ResponseInterceptorHandler handler) {
    return handler.next(response);
  }

  Future<void> _onError(DioException err, ErrorInterceptorHandler handler) async {
    final response = err.response;
    final path = err.requestOptions.path;
    final statusCode = response?.statusCode;
    
    // Log détaillé en mode debug
    AppLogger.error('Erreur API [$statusCode] sur $path', err, err.stackTrace);
    
    if (statusCode == 401 && 
        !path.endsWith('/auth/token/refresh/') &&
        !path.endsWith('/auth/login/') &&
        !path.endsWith('/auth/otp/request/') &&
        !path.endsWith('/auth/otp/verify/')) {
      
      AppLogger.info('🔄 Tentative de refresh token pour $path');
      
      try {
        final newToken = await refreshToken();
        
        if (newToken != null) {
          err.requestOptions.headers['Authorization'] = 'Bearer $newToken';
          
          final opts = Options(
            method: err.requestOptions.method,
            headers: err.requestOptions.headers,
          );
          
          try {
            final newResponse = await _dio.request<dynamic>(
              path,
              options: opts,
              data: err.requestOptions.data,
              queryParameters: err.requestOptions.queryParameters,
            );
            
            return handler.resolve(newResponse);
          } catch (retryError) {
            AppLogger.error('❌ Échec de la requête après refresh token', retryError);
          }
        }
      } catch (e) {
        AppLogger.error('❌ Échec du refresh token', e);
      }
    }
    
    // Convertir systématiquement en ApiException avant de passer au handler suivant
    // Note: handler.next(err) passera l'erreur originale, mais nous voulons que les catch
    // dans le code recoivent une ApiException.
    // Malheureusement Dio interceptor onError doit passer une DioException.
    // Nous allons donc enrichir la DioException ou laisser les méthodes d'appel faire la conversion.
    // La meilleure approche est de convertir dans les méthodes get/post de l'ApiService.
    
    return handler.next(err);
  }

  Future<String?> refreshToken() async {
    if (_refreshCompleter != null) {
      return _refreshCompleter!.future;
    }
    
    _refreshCompleter = Completer<String?>();
    
    try {
      String? refreshToken = _currentRefreshToken;
      if (refreshToken == null) {
        refreshToken = await _storageService.refreshToken;
      }
      
      if (refreshToken == null) {
        throw ApiException('Aucun refresh token disponible', type: ApiExceptionType.noRefreshToken);
      }
      
      final response = await _dio.post('/auth/token/refresh/', data: {
        'refresh': refreshToken,
      });
      
      if (response.statusCode == 200) {
        final newAccessToken = response.data['access'];
        _currentAccessToken = newAccessToken;
        await _storageService.saveAccessToken(newAccessToken);
        
        print('🔑 [API] Nouveau access token obtenu: ${newAccessToken.isNotEmpty ? "✅" : "❌ VIDE"}');
        
        _refreshCompleter!.complete(newAccessToken);
        return newAccessToken;
      } else {
        print('❌ [API] Refresh status: ${response.statusCode}');
        throw ApiException('Échec du rafraîchissement du token', type: ApiExceptionType.refreshFailed);
      }
    } catch (e) {
      AppLogger.error('Erreur lors du refresh token', e);
      
      await _invalidateTokens();
      
      final error = e is ApiException ? e : ApiException('Refresh token failed', type: ApiExceptionType.refreshFailed, originalError: e);
      _refreshCompleter!.completeError(error);
      rethrow;
    } finally {
      _refreshCompleter = null;
    }
  }

  Future<void> _invalidateTokens() async {
    _currentAccessToken = null;
    _currentRefreshToken = null;
    await _storageService.deleteTokens();
  }

  bool _isCacheExpired() {
    if (_cacheTimestamp == null) return true;
    return DateTime.now().difference(_cacheTimestamp!) > _cacheExpiration;
  }

  void _updateCacheTimestamp() {
    _cacheTimestamp = DateTime.now();
  }

  void _clearCache() {
    _cachedUniversites = null;
    _cachedFilieresByUniversite.clear();
    _cachedPromotionsByFiliere.clear();
    _cacheTimestamp = null;
  }

  // ============================================
  // Authentification
  // ============================================

  Future<Map<String, dynamic>> login(String username, String password) async {
    try {
      final response = await _dio.post('/auth/login/', data: {
        'username': username,
        'password': password,
      });
      
      if (response.statusCode == 200) {
        final data = response.data;
        final accessToken = data['access'];
        final refreshToken = data['refresh'];
        
        _currentAccessToken = accessToken;
        _currentRefreshToken = refreshToken;
        await _storageService.saveTokens(accessToken, refreshToken);
        
        return {'success': true, ...data};
      }
      return {'success': false, 'error': 'Login failed'};
    } catch (e) {
      return {'success': false, 'error': e.toString()};
    }
  }

  Future<void> register(Map<String, dynamic> registrationData) async {
    try {
      final response = await _dio.post('/auth/register/', data: registrationData);
      if (response.statusCode != 201) {
        throw Exception('Failed to register');
      }
    } on DioException {
      rethrow;
    }
  }

  Future<void> logout() async {
    try {
      final refreshToken = await _storageService.refreshToken;
      if (refreshToken != null) {
        await _dio.post('/auth/logout/', data: {'refresh': refreshToken});
      }
    } catch (e) {
      // Même en cas d'erreur, on supprime les tokens localement
    } finally {
      await _invalidateTokens();
    }
  }

  Future<Map<String, dynamic>> getUserProfile() async {
    try {
      print('🔍 [API] getUserProfile: tentative avec /auth/user/');
      final response = await _dio.get('/auth/user/');
      if (response.statusCode == 200) {
        print('✅ [API] getUserProfile: succès avec /auth/user/');
        return response.data as Map<String, dynamic>;
      }
      
      print('❌ [API] getUserProfile: échec /auth/user/ - status ${response.statusCode}');
      throw Exception('Failed to get user profile');
    } on DioException catch (e) {
      print('❌ [API] getUserProfile DioException: ${e.message}');
      print('❌ [API] getUserProfile status: ${e.response?.statusCode}');
      print('❌ [API] getUserProfile data: ${e.response?.data}');
      AppLogger.error('Failed to get user profile', e);
      rethrow;
    }
  }

  Future<bool> isLoggedIn() async {
    final token = await _storageService.accessToken;
    return token != null;
  }

  Future<String?> getAccessToken() async {
    return await _storageService.accessToken;
  }

  Future<void> initializeTokens() async {
    try {
      _currentAccessToken = await _storageService.accessToken;
      _currentRefreshToken = await _storageService.refreshToken;
    } catch (e) {
      AppLogger.error('Error initializing tokens', e);
    }
  }

  // ============================================
  // HTTP génériques
  // ============================================

  Future<Response> get(String path, {Map<String, dynamic>? queryParameters}) async {
    return await _dio.get(path, queryParameters: queryParameters);
  }

  Future<Response> post(String path, {dynamic data}) async {
    return await _dio.post(path, data: data);
  }

  Future<Response> put(String path, {dynamic data}) async {
    return await _dio.put(path, data: data);
  }

  Future<Response> delete(String path) async {
    return await _dio.delete(path);
  }

  // ============================================
  // Universités, Filières, Promotions
  // ============================================

  Future<List<Universite>> getUniversites({bool forceRefresh = false}) async {
    try {
      if (_cachedUniversites != null && !forceRefresh && !_isCacheExpired()) {
        return _cachedUniversites!;
      }
      
      final response = await _dio.get('/courses/universites/');
      if (response.statusCode == 200) {
        _cachedUniversites = (response.data as List)
            .map((json) => Universite.fromJson(json))
            .toList();
        _updateCacheTimestamp();
        return _cachedUniversites!;
      }
      return [];
    } on DioException catch (e) {
      AppLogger.error('Erreur lors du chargement des universités', e);
      rethrow;
    }
  }

  Future<List<Filiere>> getFilieresByUniversite(int universiteId, {bool forceRefresh = false}) async {
    try {
      if (_cachedFilieresByUniversite[universiteId] != null && !forceRefresh && !_isCacheExpired()) {
        return _cachedFilieresByUniversite[universiteId]!;
      }
      
      final response = await _dio.get('/courses/universites/$universiteId/filieres/');
      if (response.statusCode == 200) {
        final filieres = (response.data as List)
            .map((json) => Filiere.fromJson(json))
            .toList();
        _cachedFilieresByUniversite[universiteId] = filieres;
        _updateCacheTimestamp();
        return filieres;
      }
      return [];
    } on DioException catch (e) {
      AppLogger.error('Erreur lors du chargement des filières', e);
      rethrow;
    }
  }

  Future<List<Promotion>> getPromotionsByFiliere(int filiereId, {bool forceRefresh = false}) async {
    try {
      if (_cachedPromotionsByFiliere[filiereId] != null && !forceRefresh && !_isCacheExpired()) {
        return _cachedPromotionsByFiliere[filiereId]!;
      }
      
      final response = await _dio.get('/courses/filieres/$filiereId/promotions/');
      if (response.statusCode == 200) {
        final promotions = (response.data as List)
            .map((json) => Promotion.fromJson(json))
            .toList();
        _cachedPromotionsByFiliere[filiereId] = promotions;
        _updateCacheTimestamp();
        return promotions;
      }
      return [];
    } on DioException catch (e) {
      AppLogger.error('Erreur lors du chargement des promotions', e);
      rethrow;
    }
  }

  // ============================================
  // Résumés
  // ============================================

  Future<List<model.Summary>> getSummaries({String? search}) async {
    try {
      final queryParams = <String, dynamic>{};
      if (search != null && search.isNotEmpty) {
        queryParams['search'] = search;
      }
      
      final response = await _dio.get('/summaries/', queryParameters: queryParams);
      if (response.statusCode == 200) {
        dynamic data = response.data;
        List<dynamic> summariesList;
        
        if (data is List) {
          summariesList = data;
        } else if (data is Map && data.containsKey('results')) {
          summariesList = data['results'] as List;
        } else {
          throw Exception('Structure de réponse API inattendue');
        }
        
        final summaries = summariesList
            .map((summary) => model.Summary.fromJson(summary))
            .toList();
        return summaries;
      } else {
        throw Exception('Failed to load summaries');
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout || 
          e.type == DioExceptionType.receiveTimeout) {
        throw Exception('Délai d\'attente dépassé. Vérifiez votre connexion.');
      } else if (e.type == DioExceptionType.connectionError) {
        throw Exception('Erreur de connexion. Vérifiez votre connexion internet.');
      }
      rethrow;
    }
  }

  Future<model.Summary> getSummaryById(int id) async {
    try {
      final response = await _dio.get('/summaries/$id/');
      if (response.statusCode == 200) {
        return model.Summary.fromJson(response.data as Map<String, dynamic>);
      }
      throw Exception('Failed to load summary');
    } on DioException {
      rethrow;
    }
  }

  Future<model.Summary> createSummary({
    required String titre,
    required String texteResume,
    required int courseId,
    double? prix,
    bool? isFree,
    int? professeurId,
  }) async {
    try {
      final data = <String, dynamic>{
        'titre': titre,
        'texte_resume': texteResume,
        'course': courseId,
        'author_type': 'cp',
        'prix': prix ?? 2500.0,
        'is_free': isFree ?? false,
      };
      if (professeurId != null) data['professeur'] = professeurId;

      final response = await _dio.post('/summaries/', data: data);
      
      if (response.statusCode == 201) {
        return model.Summary.fromJson(response.data);
      } else {
        throw Exception('Failed to create summary');
      }
    } on DioException catch (e) {
      if (e.response?.data != null && e.response?.data is Map) {
        final errorData = e.response!.data as Map<String, dynamic>;
        String errorMessage = 'Erreur lors de la création du résumé';
        
        if (errorData.containsKey('non_field_errors')) {
          errorMessage = errorData['non_field_errors'].first.toString();
        } else if (errorData.containsKey('detail')) {
          errorMessage = errorData['detail'].toString();
        }
        
        throw Exception(errorMessage);
      }
      rethrow;
    }
  }

  Future<void> editSummary(int summaryId, Map<String, dynamic> data) async {
    try {
      final response = await _dio.put('/summaries/$summaryId/', data: data);
      if (response.statusCode != 200) {
        throw Exception('Failed to update summary');
      }
    } on DioException {
      rethrow;
    }
  }

  Future<void> validateSummary(int summaryId, bool isValid) async {
    try {
      final response = await _dio.post('/summaries/$summaryId/validate/', data: {
        'is_validated': isValid,
      });
      if (response.statusCode != 200) {
        throw Exception('Failed to validate summary');
      }
    } on DioException {
      rethrow;
    }
  }

  Future<Map<String, dynamic>> getSummariesForValidation({String? search}) async {
    try {
      final response = await _dio.get(
        '/summaries/validation/',
        queryParameters: search != null && search.isNotEmpty ? {'search': search} : null,
      );
      if (response.statusCode == 200) {
        return response.data as Map<String, dynamic>;
      }
      throw Exception('Failed to load summaries for validation');
    } on DioException {
      rethrow;
    }
  }

  Future<Map<String, dynamic>> requestDeleteOtp() async {
    try {
      final response = await _dio.post('/auth/delete-account/request-otp/');
      if (response.statusCode == 200) {
        return response.data as Map<String, dynamic>;
      }
      throw Exception(response.data?['error'] ?? 'Failed to send OTP');
    } on DioException catch (e) {
      final msg = e.response?.data?['error'] ?? 'Erreur lors de l\'envoi du code OTP';
      throw Exception(msg);
    }
  }

  Future<void> deleteAccount({
    required String otpCode,
    String? reason,
  }) async {
    try {
      final response = await _dio.delete(
        '/auth/delete-account/',
        data: {
          'otp_code': otpCode,
          'reason': reason ?? '',
        },
      );
      if (response.statusCode != 200) {
        final msg = response.data?['error'] ?? 'Failed to delete account';
        throw Exception(msg);
      }
    } on DioException catch (e) {
      final msg = e.response?.data?['error'] ?? 'Erreur lors de la suppression du compte';
      throw Exception(msg);
    }
  }

  Future<Map<String, dynamic>> forgotPassword(String email) async {
    try {
      final response = await _dio.post(
        '/auth/forgot-password/',
        data: {'email': email},
      );
      if (response.statusCode == 200) {
        return response.data as Map<String, dynamic>;
      }
      throw Exception('Failed to send reset code');
    } on DioException {
      rethrow;
    }
  }

  Future<Map<String, dynamic>> verifyResetCode({
    required String email,
    required String code,
  }) async {
    try {
      final response = await _dio.post(
        '/auth/verify-reset-code/',
        data: {
          'email': email,
          'code': code,
        },
      );
      if (response.statusCode == 200) {
        return response.data as Map<String, dynamic>;
      }
      throw Exception('Failed to verify reset code');
    } on DioException {
      rethrow;
    }
  }

  Future<Map<String, dynamic>> resetPassword({
    required String email,
    required String code,
    required String newPassword,
  }) async {
    try {
      final response = await _dio.post(
        '/auth/reset-password/',
        data: {
          'email': email,
          'code': code,
          'new_password': newPassword,
        },
      );
      if (response.statusCode == 200) {
        return response.data as Map<String, dynamic>;
      }
      throw Exception('Failed to reset password');
    } on DioException {
      rethrow;
    }
  }

  // ============================================
  // Cours
  // ============================================

  Future<List<dynamic>> getCourses() async {
    try {
      print('🔄 Appel API: /course-list/');
      final response = await _dio.get('/course-list/');
      print('📊 Status code: ${response.statusCode}');
      print('📄 Response data type: ${response.data.runtimeType}');
      print('📋 Response data: ${response.data}');
      
      if (response.statusCode == 200) {
        dynamic data = response.data;
        List<dynamic> coursesList;
        
        if (data is List) {
          print('✅ Response is List');
          coursesList = data;
        } else if (data is Map) {
          print('🗺️ Response is Map with keys: ${data.keys}');
          
          // Essayer différentes clés possibles
          if (data.containsKey('results')) {
            print('📦 Using "results" key');
            coursesList = data['results'] as List;
          } else if (data.containsKey('data')) {
            print('📦 Using "data" key');
            coursesList = data['data'] as List;
          } else if (data.containsKey('courses')) {
            print('📦 Using "courses" key');
            coursesList = data['courses'] as List;
          } else {
            // Si c'est une Map mais qu'on ne trouve pas de clé de liste,
            // vérifier si c'est une pagination Django Rest Framework
            print('🔍 Checking for DRF pagination structure...');
            print('📋 All keys: ${data.keys.toList()}');
            
            // Pour DRF, les données peuvent être directement dans la Map
            // ou dans une clé spécifique
            coursesList = [];
            data.forEach((key, value) {
              if (value is List && value.isNotEmpty) {
                print('📦 Found list in key "$key" with ${value.length} items');
                coursesList = value;
                return;
              }
            });
            
            if (coursesList.isEmpty) {
              print('❌ No list found in response');
              throw Exception('Structure de réponse API inattendue: Map sans liste de cours');
            }
          }
        } else {
          print('❌ Response type not supported: ${data.runtimeType}');
          throw Exception('Structure de réponse API inattendue');
        }
        
        print('✅ Courses extracted: ${coursesList.length} items');
        return coursesList;
      } else {
        throw Exception('Failed to load courses: ${response.statusCode}');
      }
    } on DioException catch (e) {
      print('❌ DioException: ${e.message}');
      print('📄 Response: ${e.response?.data}');
      print('📊 Status: ${e.response?.statusCode}');
      rethrow;
    }
  }

  // ============================================
  // Audio
  // ============================================

  Future<Map<String, dynamic>> uploadAudio({
    required Uint8List audioBytes,
    required String fileName,
    required String mimeType,
    Map<String, dynamic>? metadata,
    void Function(int sent, int total)? onSendProgress,
  }) async {
    try {
      final formData = FormData();
      
      formData.files.add(MapEntry(
        'audio_file',
        MultipartFile.fromBytes(audioBytes, filename: fileName),
      ));
      
      if (metadata != null) {
        metadata.forEach((key, value) {
          formData.fields.add(MapEntry(key, value.toString()));
        });
      }
      
      final response = await _dio.post(
        '/courses/sessions/upload-audio/',
        data: formData,
        options: Options(
          headers: {'Content-Type': 'multipart/form-data'},
        ),
        onSendProgress: onSendProgress != null
            ? (sent, total) => onSendProgress(sent.toInt(), total.toInt())
            : null,
      );
      
      if (response.statusCode == 201) {
        return {
          'success': true,
          'message': response.data['message'],
          'session': response.data['session'],
        };
      } else {
        throw Exception('Erreur lors de l\'upload: ${response.statusMessage}');
      }
    } catch (e) {
      if (e is DioException) {
        final errorMessage = e.response?.data?['error'] ?? 'Erreur de connexion';
        throw Exception(errorMessage);
      }
      throw Exception('Erreur lors de l\'upload: $e');
    }
  }

  Future<Map<String, dynamic>> uploadAudioSummary(String audioPath, Map<String, dynamic> metadata) async {
    try {
      final formData = FormData();
      
      try {
        if (kIsWeb) {
          final bytes = await _getWebAudioBytes(audioPath);
          formData.files.add(MapEntry(
            'audio_file',
            MultipartFile.fromBytes(
              bytes,
              filename: 'recording_${DateTime.now().millisecondsSinceEpoch}.wav',
            ),
          ));
        } else {
          formData.files.add(MapEntry(
            'audio_file',
            await MultipartFile.fromFile(audioPath),
          ));
        }
      } catch (e) {
        throw Exception('Erreur lors de la lecture du fichier audio: $e');
      }
      
      formData.fields.add(MapEntry('course_id', metadata['course_id']?.toString() ?? '1'));
      formData.fields.add(MapEntry('title', metadata['title'] ?? 'Enregistrement audio'));
      
      final response = await _dio.post(
        '/courses/sessions/upload-audio/',
        data: formData,
        options: Options(
          headers: {'Content-Type': 'multipart/form-data'},
        ),
      );
      
      if (response.statusCode == 201) {
        return {
          'success': true,
          'message': response.data['message'],
          'session': response.data['session'],
        };
      } else {
        throw Exception('Erreur lors de l\'upload: ${response.statusMessage}');
      }
    } catch (e) {
      if (e is DioException) {
        final errorMessage = e.response?.data?['error'] ?? 'Erreur de connexion';
        throw Exception(errorMessage);
      }
      throw Exception('Erreur lors de l\'upload: $e');
    }
  }

  Future<List<int>> _getWebAudioBytes(String audioPath) async {
    try {
      if (kIsWeb) {
        final List<int> wavHeader = [
          0x52, 0x49, 0x46, 0x46,
          0x24, 0x00, 0x00, 0x00,
          0x57, 0x41, 0x56, 0x45,
          0x66, 0x6D, 0x74, 0x20,
          0x10, 0x00, 0x00, 0x00,
          0x01, 0x00,
          0x01, 0x00,
          0x44, 0xAC, 0x00, 0x00,
          0x88, 0x58, 0x01, 0x00,
          0x02, 0x00,
          0x10, 0x00,
          0x64, 0x61, 0x74, 0x61,
          0x00, 0x00, 0x00, 0x00,
        ];
        
        final List<int> audioData = List.filled(1000, 0);
        
        return [...wavHeader, ...audioData];
      } else {
        throw Exception('Non-web platform not supported');
      }
    } catch (e) {
      throw Exception('Impossible de lire le fichier audio: $e');
    }
  }

  Future<List<dynamic>> getAudioSessions() async {
    try {
      final response = await _dio.get('/courses/sessions/');
      if (response.statusCode == 200) {
        dynamic data = response.data;
        List<dynamic> sessionsList;
        
        if (data is List) {
          sessionsList = data;
        } else if (data is Map && data.containsKey('results')) {
          sessionsList = data['results'] as List;
        } else {
          throw Exception('Structure de réponse API inattendue');
        }
        
        return sessionsList;
      } else {
        throw Exception('Failed to load audio sessions');
      }
    } on DioException {
      rethrow;
    }
  }

  Future<List<dynamic>> getAudioSessionsDetailed() async {
    try {
      final response = await _dio.get('/courses/sessions/detailed/');
      if (response.statusCode == 200) {
        return response.data as List<dynamic>;
      }
      throw Exception('Failed to load detailed audio sessions');
    } on DioException {
      rethrow;
    }
  }

  Future<Map<String, dynamic>> getAudioProcessingStats() async {
    try {
      final response = await _dio.get('/courses/sessions/stats/');
      if (response.statusCode == 200) {
        return response.data as Map<String, dynamic>;
      }
      throw Exception('Failed to load audio processing stats');
    } on DioException {
      rethrow;
    }
  }

  Future<Map<String, dynamic>> processAudioSession(int sessionId) async {
    try {
      final response = await _dio.post('/courses/sessions/$sessionId/process-audio/');
      if (response.statusCode == 200) {
        return response.data as Map<String, dynamic>;
      }
      throw Exception('Failed to process audio session');
    } on DioException {
      rethrow;
    }
  }

  Future<Map<String, dynamic>> retryFailedSession(int sessionId) async {
    try {
      final response = await _dio.post('/courses/sessions/$sessionId/retry/');
      if (response.statusCode == 200) {
        return response.data as Map<String, dynamic>;
      }
      throw Exception('Failed to retry session');
    } on DioException {
      rethrow;
    }
  }

  Future<Map<String, dynamic>> getAudioSessionStatus(int sessionId) async {
    try {
      final response = await _dio.get('/courses/sessions/$sessionId/');
      if (response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        return {
          'status': data['processing_status'] ?? 'unknown',
          'session': data,
        };
      }
      throw Exception('Failed to get session status');
    } on DioException {
      rethrow;
    }
  }

  Future<Map<String, dynamic>> autoProcessPendingSessions() async {
    try {
      final response = await _dio.post('/courses/sessions/auto-process/');
      if (response.statusCode == 200) {
        return response.data as Map<String, dynamic>;
      }
      throw Exception('Failed to auto-process sessions');
    } on DioException {
      rethrow;
    }
  }

  Future<Map<String, dynamic>> getAudioFileUrl(int sessionId) async {
    try {
      final response = await _dio.get('/courses/sessions/$sessionId/audio-url/');
      if (response.statusCode == 200) {
        return response.data as Map<String, dynamic>;
      }
      throw Exception('Failed to get audio file URL');
    } on DioException {
      rethrow;
    }
  }

  Future<Map<String, dynamic>> getSessionsQueue() async {
    try {
      final response = await _dio.get('/courses/sessions/audio/queue/');
      if (response.statusCode == 200) {
        return response.data as Map<String, dynamic>;
      }
      throw Exception('Failed to get sessions queue');
    } on DioException {
      rethrow;
    }
  }

  // ============================================
  // Professeurs
  // ============================================

  Future<List<dynamic>> getProfesseurs() async {
    try {
      final response = await _dio.get('/professeurs/');
      if (response.statusCode == 200) {
        return response.data as List<dynamic>;
      }
      throw Exception('Failed to load professeurs');
    } on DioException {
      rethrow;
    }
  }

  // ============================================
  // Achats et Paiements
  // ============================================

  Future<List<dynamic>> getPurchasedSummaries() async {
    try {
      final response = await _dio.get('/purchases/');
      if (response.statusCode == 200) {
        dynamic data = response.data;
        List<dynamic> purchasesList;
        
        if (data is List) {
          purchasesList = data;
        } else if (data is Map && data.containsKey('results')) {
          purchasesList = data['results'] as List;
        } else {
          throw Exception('Structure de réponse API inattendue');
        }
        
        return purchasesList;
      } else {
        throw Exception('Failed to load purchased summaries');
      }
    } on DioException {
      rethrow;
    }
  }

  Future<bool> hasPurchasedSummary(int summaryId) async {
    try {
      final purchases = await getPurchasedSummaries();
      return purchases.any((purchase) => 
        purchase['summary'] == summaryId && 
        purchase['status'] == 'completed'
      );
    } catch (e) {
      return false;
    }
  }

  Future<Map<String, dynamic>> checkPurchaseStatus(String transactionRef) async {
    try {
      final response = await _dio.get('/purchases/check-status/$transactionRef/');
      if (response.statusCode == 200) {
        return response.data as Map<String, dynamic>;
      }
      throw Exception('Failed to check purchase status');
    } on DioException {
      rethrow;
    }
  }

  Future<Map<String, dynamic>> initiateSummaryPurchase({
    required int summaryId,
    required String phoneNumber,
  }) async {
    try {
      final response = await _dio.post('/purchases/initiate/', data: {
        'summary_id': summaryId,
        'phone_number': phoneNumber,
      });
      
      if (response.statusCode == 200 || response.statusCode == 201) {
        return response.data as Map<String, dynamic>;
      }
      throw Exception('Failed to initiate purchase');
    } on DioException {
      rethrow;
    }
  }

  // ============================================
  // Services et Abonnements
  // ============================================

  Future<List<dynamic>> getServices() async {
    try {
      final response = await _dio.get('/services/');
      if (response.statusCode == 200) {
        return response.data as List<dynamic>;
      }
      throw Exception('Failed to load services');
    } on DioException {
      rethrow;
    }
  }

  Future<Map<String, dynamic>> initiateSubscriptionPayment(int serviceId, String phoneNumber) async {
    try {
      final response = await _dio.post('/initiate-subscription-payment/', data: {
        'service_id': serviceId,
        'phone_number': phoneNumber,
      });
      
      if (response.statusCode == 200 || response.statusCode == 201) {
        return response.data as Map<String, dynamic>;
      }
      throw Exception('Failed to initiate subscription payment');
    } on DioException {
      rethrow;
    }
  }

  Future<void> createSubscriptionAfterPayment(String reference, int serviceId) async {
    try {
      final response = await _dio.post('/create-subscription-after-payment/', data: {
        'transaction_id': reference,
        'service_id': serviceId,
      });
      
      if (response.statusCode != 200 && response.statusCode != 201) {
        throw Exception('Failed to create subscription');
      }
    } on DioException {
      rethrow;
    }
  }

  // ============================================
  // Exercices
  // ============================================

  Future<Map<String, dynamic>> checkExerciseSubscription() async {
    try {
      final response = await _dio.get('/exercises/subscription/check/');
      if (response.statusCode == 200) {
        return response.data as Map<String, dynamic>;
      }
      throw Exception('Failed to check exercise subscription');
    } on DioException {
      rethrow;
    }
  }

  Future<Map<String, dynamic>> generateExercise(int summaryId, {String? difficulty, bool forceRegenerate = false}) async {
    try {
      print('🔄 Génération exercice pour summary $summaryId (difficulty: $difficulty, force: $forceRegenerate)');
      final data = <String, dynamic>{};
      if (difficulty != null) data['difficulty'] = difficulty;
      if (forceRegenerate) data['force_regenerate'] = true;
      final response = await _dio.post(
        '/summaries/$summaryId/generate-exercise/',
        data: data.isNotEmpty ? data : null,
      );
      
      print('📊 Status code: ${response.statusCode}');
      print('📄 Response data: ${response.data}');
      
      if (response.statusCode == 200 || response.statusCode == 201) {
        print('✅ Exercice traité avec succès');
        return response.data as Map<String, dynamic>;
      }
      
      print('❌ Erreur génération exercice: Status ${response.statusCode}');
      throw Exception('Failed to generate exercise: Status ${response.statusCode}');
    } on DioException catch (e) {
      print('❌ DioException generateExercise: ${e.message}');
      print('📄 Response: ${e.response?.data}');
      print('📊 Status: ${e.response?.statusCode}');
      rethrow;
    }
  }

  Future<Map<String, dynamic>> getExercise(int exerciseId) async {
    try {
      final response = await _dio.get('/exercises/$exerciseId/');
      if (response.statusCode == 200) {
        return response.data as Map<String, dynamic>;
      }
      throw Exception('Failed to get exercise');
    } on DioException {
      rethrow;
    }
  }

  Future<Map<String, dynamic>> submitExercise(int exerciseId, Map<String, String> answers) async {
    try {
      final response = await _dio.post('/exercises/$exerciseId/submit/', data: {
        'answers': answers,
      });
      
      if (response.statusCode == 200) {
        return response.data as Map<String, dynamic>;
      }
      throw Exception('Failed to submit exercise');
    } on DioException {
      rethrow;
    }
  }

  Future<List<dynamic>> getExerciseAttempts() async {
    try {
      final response = await _dio.get('/exercises/attempts/');
      if (response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        return data['attempts'] as List<dynamic>? ?? [];
      }
      throw Exception('Failed to load exercise attempts');
    } on DioException {
      rethrow;
    }
  }

  Future<Map<String, dynamic>> getAttemptResult(int attemptId) async {
    try {
      final response = await _dio.get('/exercises/attempts/$attemptId/result/');
      if (response.statusCode == 200) {
        return response.data as Map<String, dynamic>;
      }
      throw Exception('Failed to load attempt result');
    } on DioException {
      rethrow;
    }
  }

  // ============================================
  // Notifications
  // ============================================

  Future<bool> registerFcmToken(String token, {String deviceType = 'android'}) async {
    try {
      final response = await _dio.post('/notifications/devices/register/', data: {
        'fcm_token': token,
        'device_type': deviceType,
      });
      AppLogger.info('✅ [API] FCM token enregistré: status=${response.statusCode}');
      return true;
    } catch (e) {
      AppLogger.error('❌ [API] registerFcmToken error', e);
      return false;
    }
  }

  Future<bool> unregisterFcmToken(String token) async {
    try {
      final response = await _dio.delete('/notifications/devices/unregister/', data: {'fcm_token': token});
      AppLogger.info('✅ [API] FCM token désactivé: status=${response.statusCode}');
      return true;
    } catch (e) {
      AppLogger.error('❌ [API] unregisterFcmToken error', e);
      return false;
    }
  }

  Future<Map<String, dynamic>> getNotifications({
    int page = 1,
    int pageSize = 20,
    String search = '',
    String type = '',
    bool unreadOnly = false,
  }) async {
    try {
      final params = <String, dynamic>{
        'page': page,
        'page_size': pageSize,
        if (search.isNotEmpty) 'search': search,
        if (type.isNotEmpty) 'type': type,
        if (unreadOnly) 'unread_only': 'true',
      };
      final response = await _dio.get('/notifications/', queryParameters: params);
      if (response.statusCode == 200) {
        return response.data as Map<String, dynamic>;
      }
      throw Exception('Failed to load notifications');
    } on DioException {
      rethrow;
    }
  }

  Future<int> getUnreadNotificationCount() async {
    try {
      final response = await _dio.get('/notifications/unread-count/');
      if (response.statusCode == 200) {
        return (response.data as Map<String, dynamic>)['unread_count'] as int? ?? 0;
      }
      return 0;
    } catch (_) {
      return 0;
    }
  }

  Future<Map<String, dynamic>> getNotificationDetail(int userNotificationId) async {
    try {
      final response = await _dio.get('/notifications/$userNotificationId/');
      if (response.statusCode == 200) {
        return response.data as Map<String, dynamic>;
      }
      throw Exception('Failed to load notification');
    } on DioException {
      rethrow;
    }
  }

  Future<void> markNotificationRead(int userNotificationId) async {
    try {
      await _dio.post('/notifications/$userNotificationId/read/');
    } catch (e) {
      AppLogger.error('markNotificationRead error', e);
    }
  }

  Future<void> markAllNotificationsRead() async {
    try {
      await _dio.post('/notifications/mark-all-read/');
    } catch (e) {
      AppLogger.error('markAllNotificationsRead error', e);
    }
  }
}
