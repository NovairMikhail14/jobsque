import 'package:flutter/material.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/routes_manager.dart';
import 'package:jobsque/resources/value_manager.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class SocialButtons extends StatefulWidget {
  SocialButtons({Key? key}) : super(key: key);

  @override
  State<SocialButtons> createState() => _SocialButtonsState();
}

class _SocialButtonsState extends State<SocialButtons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: AppMargin.m8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          OutlinedButton.icon(
            onPressed: () {
              Navigator.pushReplacementNamed(context,Routes.loginRoute);
            },
            icon: FaIcon(FontAwesomeIcons.google),
            label: Text(
              "Google",
              style: TextStyle(color: ColorManager.socialText),
            ),
            style: TextButton.styleFrom(
              fixedSize: Size(AppSize.s154, AppSize.s46),
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                      width: AppSize.s1, color: ColorManager.neutral300),
                  borderRadius: BorderRadius.circular(AppSize.s8)),
            ),
          ),
          OutlinedButton.icon(
            onPressed: () {},
            icon: FaIcon(FontAwesomeIcons.facebook),
            label: Text(
              "Facebook",
              style: TextStyle(color: ColorManager.socialText),
            ),
            style: TextButton.styleFrom(
                fixedSize: Size(AppSize.s154, AppSize.s46),
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                        width: AppSize.s1, color: ColorManager.neutral300),
                    borderRadius: BorderRadius.circular(AppSize.s8))),
          ),
        ],
      ),
    );
  }
}
