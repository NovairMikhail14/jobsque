import 'package:flutter/material.dart';
import 'package:jobsque/presentation/widgets/main_listtile.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';
import '../../account_access/change_password/changepassword_view.dart';
import '../../account_access/email_address/emailadress_view.dart';
import '../../account_access/phone_no/phoneno_view.dart';
import '../../account_access/step_validation/2stepvalidation_1_view.dart';

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
                    MainListTile(onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EmailAddressView(),
                          ));
                    },title:  AppStrings.lsAccAccEmail,trailingText: "#Email",),
                    MainListTile(onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PhoneNoView(),
                          ));
                    },title:  AppStrings.lsAccAccPhone,),
                    MainListTile(onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChangePasswordView(),
                          ));
                    },title:  AppStrings.lsAccAccPassword,),
                    MainListTile(onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TwoStepValidationView(),
                          ));
                    },title:  AppStrings.lsAccAccVerification,trailingText: "#Non active",),
                    MainListTile(onTap: () {
                    },title:  AppStrings.lsAccAccFaceID,),                  ],
                ),
              ],
            )
        )
    );
  }
}
