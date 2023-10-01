
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque/app/di.dart';
import 'package:jobsque/resources/theme_manager.dart';
import '../presentation/home_screen/home_screen_view.dart';
import '../presentation/pages_auth/login/cubit/login_cubit.dart';
import '../presentation/pages_startup/onboarding/cubit/onboarding_cubit.dart';
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
        BlocProvider(create: (context) => instance<LoginCubit>())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: getApplicationTheme(),
        debugShowCheckedModeBanner: false,
        // onGenerateRoute: RouteGenerator.getRoute,
        // initialRoute: Routes.splashRoute,
        home: HomeScreenView(),
      ),
    );
  }
}