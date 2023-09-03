import 'package:flutter/material.dart';
import 'package:jobsque/presentation/widgets/main_button.dart';
import 'package:jobsque/presentation/widgets/main_textfield.dart';
import 'package:jobsque/presentation/widgets/main_titleblock.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';


class CreateNewPasswordView extends StatefulWidget {
  const CreateNewPasswordView({Key? key}) : super(key: key);

  @override
  State<CreateNewPasswordView> createState() => _CreateNewPasswordViewState();
}

class _CreateNewPasswordViewState extends State<CreateNewPasswordView> {
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
                  title: AppStrings.createNewPasswordTitle,
                  subtitle: AppStrings.createNewPasswordBody),
              SizedBox(
                height: AppSize.s16,
              ),
              MainTextField(
                  icon: Icons.lock_outlined,
                  hintText: AppStrings.lsAccAccPasswordOld,
                  controller: td),
              Text(
                AppStrings.passwordValidation,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .apply(color: ColorManager.neutral400),
              ),
              MainTextField(
                  icon: Icons.lock_outlined,
                  hintText: AppStrings.lsAccAccPasswordNew,
                  controller: td),
              Text(
                AppStrings.confirmPasswordMatch,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .apply(color: ColorManager.neutral400),
              ),
              Spacer(flex: AppSize.s1.toInt()),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppStrings.rememberpasswordQuestion,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  TextButton(
                    child: Text(AppStrings.loginTitle,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .apply(color: ColorManager.primary500)),
                    onPressed: () {},
                  ),
                ],
              ),
              MainButton(text: AppStrings.btnResetPassword, onPress: () {}),
            ],
          ),
        ));
  }
}
