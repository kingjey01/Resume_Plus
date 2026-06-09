import 'package:flutter/material.dart';
import 'package:resume_plus_clean/features/onboarding/onboarding_screen.dart';
import 'package:resume_plus_clean/features/app/screens/main_navigation_screen.dart';
import 'package:resume_plus_clean/features/auth/screens/phone_login_screen.dart';
import 'package:resume_plus_clean/services/auto_login_service.dart';
import 'package:resume_plus_clean/theme/app_theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 1200));
    _fadeAnimation = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
    _scaleAnimation = Tween<double>(begin: 0.8, end: 1).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutBack));
    _controller.forward();
    _determineNavigation();
  }

  void _determineNavigation() async {
    // Attendre l'animation du splash
    await Future.delayed(const Duration(milliseconds: 2500));
    if (!mounted) return;

    final startState = await AutoLoginService.determineStartState();

    if (!mounted) return;

    switch (startState) {
      case AppStartState.loggedIn:
      case AppStartState.sessionRestored:
        // Token valide ou session restaurée → espace personnel directement
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => MainNavigationScreen(key: MainNavigationScreen.navKey)),
        );
        break;

      case AppStartState.deviceKnownNeedsAuth:
        // Device connu mais session expirée → page de saisie numéro (pré-rempli)
        final phone = await AutoLoginService.getRegisteredPhone();
        if (mounted) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (_) => PhoneLoginScreen(prefillPhone: phone),
            ),
          );
        }
        break;

      case AppStartState.newDevice:
        // Nouvel appareil → onboarding
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => const OnboardingScreen()),
        );
        break;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [AppTheme.primaryBlueDark, AppTheme.primaryBlue, AppTheme.primaryBlueLight],
          ),
        ),
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Opacity(
              opacity: _fadeAnimation.value,
              child: Transform.scale(
                scale: _scaleAnimation.value,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 100, height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(28),
                      ),
                      child: const Icon(Icons.school_rounded, size: 52, color: Colors.white),
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      'Résumé+',
                      style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700, color: Colors.white, letterSpacing: -0.5),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Vos cours, simplifiés',
                      style: TextStyle(fontSize: 14, color: Colors.white.withOpacity(0.7)),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
