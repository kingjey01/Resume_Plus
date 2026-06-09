import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:resume_plus_clean/exceptions/api_exception.dart';
import 'package:resume_plus_clean/services/snackbar_service.dart';
import 'package:resume_plus_clean/utils/logger.dart';

mixin ErrorHandlerMixin<T extends StatefulWidget> on State<T> {
  /// Gère une erreur et affiche un message approprié via Snackbar
  void handleError(dynamic error, {String? customMessage}) {
    ApiException apiException;
    
    if (error is ApiException) {
      apiException = error;
    } else if (error is DioException) {
      apiException = ApiException.fromDioException(error);
    } else {
      apiException = ApiException(
        customMessage ?? error.toString(),
        type: ApiExceptionType.unknown,
        originalError: error,
      );
    }

    AppLogger.error('Erreur interceptée par ErrorHandlerMixin', error);
    
    if (mounted) {
      SnackbarService.show(
        apiException.message,
        isError: true,
      );
    }
  }

  /// Convertit n'importe quelle erreur en ApiException pour l'affichage
  ApiException getApiException(dynamic error) {
    if (error is ApiException) return error;
    if (error is DioException) return ApiException.fromDioException(error);
    return ApiException(
      error.toString(),
      type: ApiExceptionType.unknown,
      originalError: error,
    );
  }
}
