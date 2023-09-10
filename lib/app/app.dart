
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:jobsque/resources/theme_manager.dart';

import '../presentation/onboarding/cubit/onboarding_cubit.dart';
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
        BlocProvider(create: (context) => OnBoardingCubit(),)
      ],
      child: GetMaterialApp(
        title: 'Flutter Demo',
        theme: getApplicationTheme(),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteGenerator.getRoute,
        initialRoute: Routes.splashRoute,
        // home: LoginView(),
      ),
    );
  }
}