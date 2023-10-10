import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/presentation/widgets/main_button.dart';
import 'package:jobsque/presentation/widgets/main_textfield.dart';
import 'package:jobsque/presentation/widgets/main_titleblock.dart';
import 'package:jobsque/resources/assets_manager.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/routes_manager.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';


class AccountSetupView extends StatefulWidget {
  const AccountSetupView({Key? key}) : super(key: key);

  @override
  State<AccountSetupView> createState() => _AccountSetupViewState();
}

class _AccountSetupViewState extends State<AccountSetupView> {
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
              SvgPicture.asset(ImageAssets.accountSetup),
            Container(
              margin: EdgeInsets.symmetric(vertical: AppMargin.m8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [

                  Text(
                    AppStrings.taskConfirmAccountCreateTitle,
                    style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center ,
                  ),
                  SizedBox(
                    height: AppSize.s4,
                  ),
                  Text(
                    AppStrings.taskConfirmAccountCreateBody,
                    style: Theme.of(context).textTheme.bodyMedium,textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
              Spacer(flex: AppSize.s1.toInt()),
              MainButton(text: AppStrings.btnGetStarted, onPress: () {
                Navigator.of(context).pushNamed(Routes.HomeScreenViewRoute);
              }),
            ],
          ),
        ));
  }
}
