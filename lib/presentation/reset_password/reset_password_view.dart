import 'package:flutter/material.dart';
import 'package:jobsque/presentation/login/view/login_view.dart';
import 'package:jobsque/presentation/widgets/main_button.dart';
import 'package:jobsque/presentation/widgets/main_textfield.dart';
import 'package:jobsque/presentation/widgets/main_titleblock.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';


class ResetPasswordView extends StatefulWidget {
  const ResetPasswordView({Key? key}) : super(key: key);

  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView> {
  TextEditingController td = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Icon(Icons.abc),
          ],
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: AppPadding.p14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MainTitleBlock(
                  title: AppStrings.resetPasswordTitle,
                  subtitle: AppStrings.resetPasswordnBody),
              SizedBox(
                height: AppSize.s16,
              ),
              MainTextField(
                  icon: Icons.messenger_outline,
                  hintText: AppStrings.enterEmailResetPassword,
                  controller: td),
              Spacer(flex: AppSize.s1.toInt()),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppStrings.rememberpasswordQuestion,
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
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginView(),));
                    },
                  ),
                ],
              ),
              MainButton(text: AppStrings.btnResetPassword, onPress: () {}),
            ],
          ),
        ));
  }
}
