import 'package:flutter/material.dart';
import 'package:jobsque/presentation/create_account/create_account_view.dart';
import 'package:jobsque/presentation/forget_password/forgot_password_view.dart';
import 'package:jobsque/presentation/login/view/login_view.dart';
import 'package:jobsque/presentation/main/main_view.dart';
import 'package:jobsque/presentation/onboarding/view/onboarding_view.dart';
import 'package:jobsque/presentation/spashcreen/view/splash_view.dart';
import 'package:jobsque/resources/strings_manager.dart';

import '../app/di.dart';
import '../presentation/account_access/change_password/changepassword_view.dart';
import '../presentation/account_access/email_address/emailadress_view.dart';
import '../presentation/account_access/phone_no/phoneno_view.dart';
import '../presentation/account_access/step_validation/2stepvalidation_1_view.dart';
import '../presentation/account_access/step_validation/2stepvalidation_digit_view.dart';
import '../presentation/account_access/step_validation/2stepvalidation_phone_view.dart';
import '../presentation/general/editprofile/editprofile_view.dart';
import '../presentation/general/language/language_view.dart';
import '../presentation/general/loginsecurity/loginsecurity_view.dart';
import '../presentation/general/notification/notification_view.dart';
import '../presentation/general/portfolio/portfolio_view.dart';
import '../presentation/other/help_center_view.dart';
import '../presentation/other/privacy_policy_view.dart';
import '../presentation/other/terms_condition_view.dart';
import '../presentation/profile/education_view.dart';
import '../presentation/profile/experience_view.dart';
import '../presentation/profile/profile_view.dart';

class Routes {
  static const String splashRoute = "/";
  static const String loginRoute = "login";
  static const String onBoardingRoute = "onBoarding";
  static const String createAccountRoute = "createAccount";
  static const String forgotPasswordRoute = "forgotPassword";
  static const String mainRoute = "main";
  static const String profileRoute = "profile";
  static const String educationRoute = "education";
  static const String experienceRoute = "experience";
  static const String editProfileRoute = "editProfile";
  static const String languageRoute = "language";
  static const String loginSecurityRoute = "loginSecurity";
  static const String notificationRoute = "notification";
  static const String portfolioRoute = "portfolio";
  static const String privacyPolicyRoute = "privacyPolicy";
  static const String helpCenterRoute = "helpCenter";
  static const String termsConditionsRoute = "termsConditions";
  static const String changePasswordRoute = "ChangePassword";
  static const String emailAddressRoute = "EmailAddress";
  static const String phoneNoRoute = "PhoneNo";
  static const String twoStepValidationRoute = "TwoStepValidation";
  static const String twoStepValidationDigitRoute = "TwoStepValidationDigit";
  static const String twoStepValidationPhoneNoRoute = "TwoStepValidationPhoneNo";

}


class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
    case Routes.changePasswordRoute:
    return MaterialPageRoute(
    builder: (context) => const ChangePasswordView(),
    );
    case Routes.emailAddressRoute:
    return MaterialPageRoute(
    builder: (context) => const EmailAddressView(),
    );
    case Routes.phoneNoRoute:
    return MaterialPageRoute(
    builder: (context) => const PhoneNoView(),
    );
    case Routes.twoStepValidationRoute:
    return MaterialPageRoute(
    builder: (context) => const TwoStepValidationView(),
    );
    case Routes.twoStepValidationDigitRoute:
    return MaterialPageRoute(
    builder: (context) => const TwoStepValidationDigitView(),
    );
    case Routes.twoStepValidationPhoneNoRoute:
    return MaterialPageRoute(
    builder: (context) => const TwoStepValidationPhoneNoView(),
    );
    case Routes.loginSecurityRoute:
    return MaterialPageRoute(
    builder: (context) => const LoginSecurityView(),
    );
    case Routes.notificationRoute:
    return MaterialPageRoute(
    builder: (context) => const NotificationView(),
    );
    case Routes.portfolioRoute:
    return MaterialPageRoute(
    builder: (context) => const PortfolioView(),
    );
    case Routes.educationRoute:
    return MaterialPageRoute(
    builder: (context) => const EducationView(),
    );
    case Routes.experienceRoute:
    return MaterialPageRoute(
    builder: (context) => const ExperienceView(),
    );
    case Routes.educationRoute:
    return MaterialPageRoute(
    builder: (context) => const EditProfileView(),
    );
    case Routes.languageRoute:
    return MaterialPageRoute(
    builder: (context) => const LanguageView(),
    );
    case Routes.helpCenterRoute:
    return MaterialPageRoute(
    builder: (context) => const HelpCenterView(),
    );
    case Routes.privacyPolicyRoute:
    return MaterialPageRoute(
    builder: (context) => const PrivacyPolicyView(),
    );
    case Routes.termsConditionsRoute:
    return MaterialPageRoute(
    builder: (context) => const TermsConditionsView(),
    );
    case Routes.profileRoute:
    return MaterialPageRoute(
    builder: (context) => const ProfileView(),
    );
    case Routes.splashRoute:
    return MaterialPageRoute(
    builder: (context) => const SplashView(),
    );
    case Routes.onBoardingRoute:
    return MaterialPageRoute(
    builder: (context) => const OnboardingView(),
    );
    case Routes.loginRoute:
      initLoginModule();
    return MaterialPageRoute(
    builder: (context) => LoginView(),
    );
    case Routes.createAccountRoute:
    return MaterialPageRoute(
    builder: (context) => const CreateAccountView(),
    );
    case Routes.forgotPasswordRoute:
    return MaterialPageRoute(
    builder: (context) => const ForgotPasswordView(),
    );
    case Routes.mainRoute:
    return MaterialPageRoute(
    builder: (context) => const MainView(),
    );
    default:
    return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(AppStrings.noRouteFound),
          ),
          body: const Center(
            child: Text(AppStrings.noRouteFound),
          ),
        );
      },
    );
  }
}
