import 'package:flutter/material.dart';
import 'package:jobsque/presentation/widgets/main_listtile.dart';
import 'package:jobsque/presentation/widgets/language_radioswitch.dart';
import 'package:jobsque/presentation/widgets/main_switchtile.dart';
import 'package:jobsque/presentation/widgets/main_titleblock.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';

class LoginSecurityView extends StatefulWidget {
  const LoginSecurityView({Key? key}) : super(key: key);

  @override
  State<LoginSecurityView> createState() => _LoginSecurityViewState();
}

class _LoginSecurityViewState extends State<LoginSecurityView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorManager.general,
          title: const Text(AppStrings.language),
        ),
        body: Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: AppPadding.p8),
                  alignment: Alignment.centerLeft,
                  color: ColorManager.neutral200,
                  height:AppSize.s36 ,
                  width: MediaQuery.of(context).size.width,
                  child: Text(AppStrings.lsAccountAccess),
                ),
                Column(
                  children: [
                    MainListTile(title:  AppStrings.lsAccAccEmail,trailingText: "#Email",),
                    MainListTile(title:  AppStrings.lsAccAccPhone,),
                    MainListTile(title:  AppStrings.lsAccAccPassword,),
                    MainListTile(title:  AppStrings.lsAccAccVerification,trailingText: "#Non active",),
                    MainListTile(title:  AppStrings.lsAccAccFaceID,),                  ],
                ),
              ],
            )
        )
    );
  }
}
