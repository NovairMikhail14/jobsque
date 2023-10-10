import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/presentation/widgets/main_button.dart';
import 'package:jobsque/presentation/widgets/main_textfield.dart';
import 'package:jobsque/presentation/widgets/main_titleblock.dart';
import 'package:jobsque/resources/assets_manager.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';

import '../../resources/routes_manager.dart';


class CheckEmailView extends StatefulWidget {
  const CheckEmailView({Key? key}) : super(key: key);

  @override
  State<CheckEmailView> createState() => _CheckEmailViewState();
}

class _CheckEmailViewState extends State<CheckEmailView> {
  TextEditingController td = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: AppPadding.p8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center ,
            children: [
              SizedBox(
                height: AppSize.s60,
              ),
              SvgPicture.asset(ImageAssets.checkEmail),
            Container(
              margin: EdgeInsets.symmetric(vertical: AppMargin.m8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    AppStrings.taskConfirmSendEmailTitle,
                    style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center ,
                  ),
                  SizedBox(
                    height: AppSize.s4,
                  ),
                  Text(
                    AppStrings.taskConfirmSendEmailBody,
                    style: Theme.of(context).textTheme.bodyMedium,textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
              Spacer(flex: 1,),
              MainButton(text: AppStrings.btnOpenEmail, onPress: () {
                Navigator.of(context).pushNamed( Routes.CheckEmailViewRoute);
              }),
            ],
          ),
        ));
  }
}
