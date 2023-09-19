import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/resources/assets_manager.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/constant_manager.dart';
import 'package:jobsque/resources/routes_manager.dart';

import '../../../app/app_pref.dart';
import '../../../app/di.dart';
import '../../onboarding/view/onboarding_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  final AppPreferences _shearedPref = instance<AppPreferences>();

  @override
  void initState()  {
    Future.delayed(
      const Duration(seconds: AppConstants.splashDelay),
      () async {
        if (await _shearedPref.isLoggedIn()){
          return Navigator.pushReplacementNamed(context, Routes.phoneNoRoute);
        }else if(await _shearedPref.isAppOnBoardingViewed()) {
          return Navigator.pushReplacementNamed(context, Routes.loginRoute);
        }else{
          return Navigator.pushReplacementNamed(context, Routes.onBoardingRoute);
        }
    }
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.general,
      body: Center(
          child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 190,
            height: 189,
            decoration: ShapeDecoration(
                color: ColorManager.primary100, shape: OvalBorder()),
          ),
          Container(
            width: 190,
            height: 189,
            decoration: ShapeDecoration(
                color: ColorManager.primary100, shape: OvalBorder()),
          ),
          Container(
            width: 190,
            height: 189,
            decoration: ShapeDecoration(
                color: ColorManager.primary100, shape: OvalBorder()),
          ),
          Container(
            width: 190,
            height: 189,
            decoration: ShapeDecoration(
                color: ColorManager.primary100, shape: OvalBorder()),
          ),
          SizedBox(
              child: SvgPicture.asset(
            ImageAssets.logo,
            height: 30,
          ))
        ],
      )),
    );
  }
}
