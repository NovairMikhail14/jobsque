import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:jobsque/resources/assets_manager.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/constant_manager.dart';

import '../../onboarding/view/onboarding_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: AppConstants.splashDelay),
      () => Get.to( ()=> OnboardingView() )
        // Navigator.push(
            // context, MaterialPageRoute(builder: (context) => OnboardingView()));
      ,
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
