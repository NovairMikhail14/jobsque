
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque/app/di.dart';
import 'package:jobsque/domain/model/favorite_model.dart';
import 'package:jobsque/presentation/0cubit/apply_usecase/showApply_cubit/show_apply_cubit.dart';
import 'package:jobsque/resources/theme_manager.dart';
import '../presentation/pages_auth/create_account/register_cubit/register_cubit.dart';
import '../presentation/pages_auth/forget_password/cubit/forget_password_cubit.dart';
import '../presentation/pages_auth/login/cubit/login_cubit.dart';
import '../presentation/pages_chats/chats_usecase/allChats_cubit/all_chats_cubit.dart';
import '../presentation/pages_chats/chats_usecase/getAllCompany_cubit/get_all_company_cubit.dart';
import '../presentation/pages_chats/chats_usecase/userSendMessage_cubit/user_send_message_cubit.dart';
import '../presentation/pages_home_jobs/cubit/addFavorite_cubit/add_favorite_cubit.dart';
import '../presentation/pages_home_jobs/cubit/getAllJob_cubit/get_all_job_cubit.dart';
import '../presentation/pages_home_jobs/cubit/jobID_cubit/job_id_cubit.dart';
import '../presentation/pages_home_jobs/cubit/searchJob_cubit/search_job_cubit.dart';
import '../presentation/pages_profile/cubit/addPortofolio_cubit/add_portofolio_cubit.dart';
import '../presentation/pages_profile/cubit/deletePortofolio_cubit/delete_portofolio_cubit.dart';
import '../presentation/pages_profile/cubit/editAllPortofolio_cubit/edit_all_portofolio_cubit.dart';
import '../presentation/pages_profile/cubit/getAllPortofolios_cubit/get_all_portofolios_cubit.dart';
import '../presentation/pages_startup/onboarding/cubit/onboarding_cubit.dart';
import '../presentation/save_job/cubit/deleteFavorite_cubit/delete_favorite_cubit.dart';
import '../presentation/save_job/cubit/showAllFavorite_cubit/show_all_favorite_cubit.dart';
import '../resources/routes_manager.dart';

class MyApp extends StatelessWidget {
  MyApp._internal();
  static final MyApp _instance = MyApp._internal();
  factory MyApp() => _instance;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => OnBoardingCubit(),),
        BlocProvider(create: (context) => instance<LoginCubit>()),
        BlocProvider(create: (context) => instance<RegisterCubit>()),
        BlocProvider(create: (context) => instance<GetAllJobCubit>()),
        BlocProvider(create: (context) => instance<GetAllCompanyCubit>()),
        BlocProvider(create: (context) => instance<JobIdCubit>()),
        BlocProvider(create: (context) => instance<SearchJobCubit>()),
        BlocProvider(create: (context) => instance<GetAllPortofoliosCubit>()),
        BlocProvider(create: (context) => instance<AddPortofolioCubit>()),
        BlocProvider(create: (context) => instance<DeletePortofolioCubit>()),
        BlocProvider(create: (context) => instance<EditAllPortofolioCubit>()),
        BlocProvider(create: (context) => instance<ShowApplyCubit>()),
        BlocProvider(create: (context) => instance<ShowAllFavoriteCubit>()),
        BlocProvider(create: (context) => instance<DeleteFavoriteCubit>()),
        BlocProvider(create: (context) => instance<AddFavoriteCubit>()),
        BlocProvider(create: (context) => instance<AllChatsCubit>()),
        BlocProvider(create: (context) => instance<ForgetPasswordCubit>()),
        BlocProvider(create: (context) => instance<UserSendMessageCubit>()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: getApplicationTheme(),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteGenerator.getRoute,
        initialRoute: Routes.splashRoute,
        // home: HomeScreenView(),
      ),
    );
  }
}