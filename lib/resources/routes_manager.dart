import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsque/presentation/applied_job/applied_job_view.dart';
import 'package:jobsque/presentation/applied_job/biodata/biodata_view.dart';
import 'package:jobsque/presentation/applied_job/type_work/type_work_view.dart';
import 'package:jobsque/presentation/applied_job/upload_portfolio/upload_portfolio_view.dart';
import 'package:jobsque/presentation/complete_profile/complete_profile_view.dart';
import 'package:jobsque/presentation/end_page/account_setup_View..dart';
import 'package:jobsque/presentation/end_page/check_email_View..dart';
import 'package:jobsque/presentation/end_page/noAppRejected_View..dart';
import 'package:jobsque/presentation/end_page/noMesseges_View..dart';
import 'package:jobsque/presentation/end_page/no_notification_View..dart';
import 'package:jobsque/presentation/end_page/nothing_saved_View.dart';
import 'package:jobsque/presentation/end_page/password_changed_View..dart';
import 'package:jobsque/presentation/main/main_view.dart';
import 'package:jobsque/presentation/pages_auth/create_account/preferred_view.dart';
import 'package:jobsque/resources/strings_manager.dart';
import '../app/di.dart';
import '../presentation/pages_auth/create_account/create_account_view.dart';
import '../presentation/pages_auth/create_account/interests_view.dart';
import '../presentation/pages_auth/forget_password/forgot_password_view.dart';
import '../presentation/pages_auth/login/view/login_view.dart';
import '../presentation/pages_auth/reset_password/reset_password_view.dart';
import '../presentation/pages_home_jobs/home_screen/home_screen_filter.dart';
import '../presentation/pages_home_jobs/home_screen/home_screen_search.dart';
import '../presentation/pages_home_jobs/home_screen/home_screen_view.dart';
import '../presentation/pages_home_jobs/job_detail/job_company.dart';
import '../presentation/pages_home_jobs/job_detail/job_detail_view.dart';
import '../presentation/pages_home_jobs/job_detail/job_detail_view.dart';
import '../presentation/pages_home_jobs/job_detail/job_people.dart';
import '../presentation/pages_profile/account_access/change_password/changepassword_view.dart';
import '../presentation/pages_profile/account_access/email_address/emailadress_view.dart';
import '../presentation/pages_profile/account_access/phone_no/phoneno_view.dart';
import '../presentation/pages_profile/account_access/step_validation/2stepvalidation_1_view.dart';
import '../presentation/pages_profile/account_access/step_validation/2stepvalidation_digit_view.dart';
import '../presentation/pages_profile/account_access/step_validation/2stepvalidation_phone_view.dart';
import '../presentation/pages_profile/general/editprofile/editprofile_view.dart';
import '../presentation/pages_profile/general/language/language_view.dart';
import '../presentation/pages_profile/general/loginsecurity/loginsecurity_view.dart';
import '../presentation/pages_profile/general/notification/notification_view.dart';
import '../presentation/pages_profile/general/portfolio/portfolio_view.dart';
import '../presentation/pages_profile/other/help_center_view.dart';
import '../presentation/pages_profile/other/privacy_policy_view.dart';
import '../presentation/pages_profile/other/terms_condition_view.dart';
import '../presentation/pages_profile/profile/education_view.dart';
import '../presentation/pages_profile/profile/experience_view.dart';
import '../presentation/pages_profile/profile/profile_view.dart';
import '../presentation/pages_startup/onboarding/view/onboarding_view.dart';
import '../presentation/pages_startup/spashcreen/view/splash_view.dart';
import '../presentation/save_notification/saved_job_view.dart';

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
  static const String twoStepValidationPhoneNoRoute =
      "TwoStepValidationPhoneNo";
  static const String Route = "No";
  static const String NoAppRejectedViewRoute = "NoAppRejectedView";
  static const String NoNotificationViewRoute = "NoNotificationView";
  static const String CheckEmailViewRoute = "CheckEmailView";
  static const String AccountSetupViewRoute = "AccountSetupView";
  static const String PreferredViewRoute = "PreferredView";
  static const String InterestsViewRoute = "InterestsView";
  static const String NoMessagesViewRoute = "NoMessagesView";
  static const String NothingSavedViewRoute = "NothingSavedView";
  static const String PasswordChangedViewRoute = "PasswordChangedView";
  static const String CompleteProfileViewRoute = "CompleteProfileView";
  static const String HomeScreenViewRoute = "HomeScreenView";
  static const String HomeScreenSearchRoute = "HomeScreenSearch";
  static const String JobCompanyViewRoute = "JobCompanyView";
  static const String JobDescriptionViewRoute = "JobDescriptionView";
  static const String JobDetailViewRoute = "JobDetailView";
  static const String JobPeopleViewRoute = "JobPeopleView";
  static const String BioDataViewRoute = "BioDataView";
  static const String TypeWorkViewRoute = "TypeWorkView";
  static const String UploadPortfolioViewRoute = "UploadPortfolioView";
  static const String AppliedJobViewRoute = "AppliedJobView";
  static const String ResetPasswordView = "ResetPasswordView";
  static const String HomeScreenFilter = "HomeScreenFilter";
  static const String SaveJobViewRoute = "SaveJobView";


// static const String Route = "No";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.SaveJobViewRoute:
        return MaterialPageRoute(
          builder: (context) =>  SaveJobView(),
        );
      case Routes.ResetPasswordView:
        return MaterialPageRoute(
          builder: (context) => const ResetPasswordView(),
        );
      case Routes.HomeScreenFilter:
        return MaterialPageRoute(
          builder: (context) => const HomeScreenFilter(),
        );
      case Routes.InterestsViewRoute:
        return MaterialPageRoute(
          builder: (context) => const InterestsView(),
        );
      case Routes.PreferredViewRoute:
        return MaterialPageRoute(
          builder: (context) => const PreferredView(),
        );
      case Routes.AccountSetupViewRoute:
        return MaterialPageRoute(
          builder: (context) => const AccountSetupView(),
        );
      case Routes.CheckEmailViewRoute:
        return MaterialPageRoute(
          builder: (context) => const CheckEmailView(),
        );
      case Routes.NoNotificationViewRoute:
        return MaterialPageRoute(
          builder: (context) => const NoNotificationView(),
        );
      case Routes.NoAppRejectedViewRoute:
        return MaterialPageRoute(
          builder: (context) => const NoAppRejectedView(),
        );
      case Routes.NoMessagesViewRoute:
        return MaterialPageRoute(
          builder: (context) => const NoMessagesView(),
        );
      case Routes.NothingSavedViewRoute:
        return MaterialPageRoute(
          builder: (context) => const NothingSavedView(),
        );
      case Routes.PasswordChangedViewRoute:
        return MaterialPageRoute(
          builder: (context) => const PasswordChangedView(),
        );
      case Routes.CompleteProfileViewRoute:
        return MaterialPageRoute(
          builder: (context) => const CompleteProfileView(),
        );
      case Routes.HomeScreenViewRoute:
        initLoginModule();
        return MaterialPageRoute(
          builder: (context) {
            return HomeScreenView();
          },
        );
      case Routes.HomeScreenSearchRoute:
        return MaterialPageRoute(
          builder: (context) => HomeScreenSearchView(),
        );
      case Routes.JobDescriptionViewRoute:
        return MaterialPageRoute(
          builder: (context) {
            final args = settings.arguments as ScreenArguments;
            return JobDetailView(args.id);
          },
        );
      case Routes.JobPeopleViewRoute:
        return MaterialPageRoute(
          builder: (context) => JobPeopleView(1),
        );
        ;
      case Routes.BioDataViewRoute:
        return MaterialPageRoute(
          builder: (context) => const BioDataView(),
        );
        ;
      case Routes.TypeWorkViewRoute:
        return MaterialPageRoute(
          builder: (context) => const TypeWorkView(),
        );
        ;
      case Routes.UploadPortfolioViewRoute:
        return MaterialPageRoute(
          builder: (context) => const UploadPortfolioView(),
        );
      case Routes.AppliedJobViewRoute:
        return MaterialPageRoute(
          builder: (context) => const AppliedJobView(),
        );
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
      case Routes.editProfileRoute:
        return MaterialPageRoute(
          builder: (context) {
            final args = settings.arguments as ProfileViewData;
            return EditProfileView(args.name??"",args.bio??"",args.address??"",args.phone??"");
          },
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
          builder: (context) => ProfileView(),
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
        initLoginModule();
        return MaterialPageRoute(
          builder: (context) => CreateAccountView(),
        );
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(
          builder: (context) => ForgotPasswordView(),
        );
      case Routes.mainRoute:
        return MaterialPageRoute(
          builder: (context) => MainView(),
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
