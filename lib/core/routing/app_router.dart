import 'package:biocode/core/routing/routes.dart';
import 'package:biocode/features/auth/presentation/views/fill_profile_view.dart';
import 'package:biocode/features/auth/presentation/views/forgot_password_view.dart';
import 'package:biocode/features/auth/presentation/views/otp_verification_view.dart';
import 'package:biocode/features/auth/presentation/views/signin_view.dart';
import 'package:biocode/features/auth/presentation/views/signup_view.dart';
import 'package:biocode/features/home/ui/views/home_view.dart';
import 'package:biocode/features/on_boarding/ui/views/onboarding_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: Routes.onBoardingView,
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        path: Routes.signInView,
        builder: (context, state) => const SignInView(),
      ),
      GoRoute(
        path: Routes.signUpView,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: Routes.fillProfileView,
        builder: (context, state) => const FillProfileView(),
      ),
      GoRoute(
        path: Routes.forgotPasswordView,
        builder: (context, state) => const ForgotPasswordView(),
      ),
      GoRoute(
        path: Routes.oTPVerificationView,
        builder: (context, state) => const OTPVerificationView(),
      ),
      GoRoute(
        path: Routes.homeView,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
