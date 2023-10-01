import 'package:flutter/material.dart';
import 'package:jobsque/presentation/widgets/main_button.dart';
import 'package:jobsque/presentation/widgets/main_textfield.dart';
import 'package:jobsque/presentation/widgets/main_titleblock.dart';
import 'package:jobsque/presentation/widgets/socialbutton.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';

import '../login/view/login_view.dart';


class CreateAccountView extends StatefulWidget {
  const CreateAccountView({Key? key}) : super(key: key);

  @override
  State<CreateAccountView> createState() => _CreateAccountViewState();
}

class _CreateAccountViewState extends State<CreateAccountView> {
  TextEditingController td = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Icon(Icons.abc),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: AppPadding.p14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MainTitleBlock(
                    title: AppStrings.createAccountTitle,
                    subtitle: AppStrings.createAccountBody),
                SizedBox(
                  height: AppSize.s16,
                ),
                MainTextField(
                    icon: Icons.person_2_outlined,
                    hintText: AppStrings.username,
                    controller: td),
                MainTextField(
                    icon: Icons.email_outlined,
                    hintText: AppStrings.email,
                    controller: td),
                MainTextField(
                    icon: Icons.lock_outline,
                    hintText: AppStrings.password,
                    controller: td),
                Text(
                  AppStrings.passwordValidation,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .apply(color: ColorManager.neutral400),
                ),
                SizedBox(height: AppSize.s60,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppStrings.haveAccountQuestion,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .apply(color: ColorManager.neutral400),
                    ),
                    TextButton(
                      child: Text(AppStrings.loginTitle,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .apply(color: ColorManager.primary500)),
                      onPressed: () { Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginView(),));},
                    ),
                  ],
                ),
                MainButton(text: AppStrings.createAccountTitle, onPress: () {}),
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Divider(
                      color: ColorManager.neutral300,
                      height: 1,
                    ),
                    Container(
                      color: ColorManager.general,
                      width: AppSize.s200,
                      alignment: AlignmentDirectional.center,
                      child: Text(
                        AppStrings.sigupupOption,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    )
                  ],
                ),
                SocialButtons(),
              ],
            ),
          ),
        ));
  }
}
