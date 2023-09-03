import 'package:flutter/material.dart';
import 'package:jobsque/presentation/create_account/create_account_view.dart';
import 'package:jobsque/presentation/forget_password/forgot_password_view.dart';
import 'package:jobsque/presentation/login/login_view.dart';
import 'package:jobsque/presentation/main/main_view.dart';
import 'package:jobsque/presentation/onboarding/view/onboarding_view.dart';
import 'package:jobsque/presentation/spashcreen/splash_view.dart';
import 'package:jobsque/resources/strings_manager.dart';

class Routes {
  static const String splashRoute = "/";
  static const String loginRoute = "login";
  static const String onBoardingRoute = "onBoarding";
  static const String createAccountRoute = "createAccount";
  static const String forgotPasswordRoute = "forgotPassword";
  static const String mainRoute = "main";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(
          builder: (context) =>const SplashView(),
        );
      case Routes.onBoardingRoute:
        return MaterialPageRoute(
          builder: (context) =>const OnboardingView(),
        );
      case Routes.loginRoute:
        return MaterialPageRoute(
          builder: (context) =>const LoginView(),
        );
      case Routes.createAccountRoute:
        return MaterialPageRoute(
          builder: (context) =>const CreateAccountView(),
        );
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(
          builder: (context) =>const ForgotPasswordView(),
        );
      case Routes.mainRoute:
        return MaterialPageRoute(
          builder: (context) =>const MainView(),
        );
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute(){
    return MaterialPageRoute(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title:const Text(AppStrings.noRouteFound),
        ),
        body: const Center(
          child: Text(
              AppStrings.noRouteFound
          ),
        ),
      );
    },);
  }
}
