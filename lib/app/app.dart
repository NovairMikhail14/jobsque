
import 'package:flutter/material.dart';
import 'package:jobsque/presentation/login/login_view.dart';
import 'package:jobsque/resources/theme_manager.dart';

class MyApp extends StatelessWidget {
  MyApp._internal();
  static final MyApp _instance = MyApp._internal();
  factory MyApp() => _instance;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    TextEditingController tc = TextEditingController();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: getApplicationTheme(),
      debugShowCheckedModeBanner: false,
      // onGenerateRoute: RouteGenerator.getRoute,
      // initialRoute: Routes.createAccountRoute,
      home: LoginView(),
    );
  }
}