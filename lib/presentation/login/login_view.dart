import 'package:flutter/material.dart';
import 'package:jobsque/presentation/widgets/main_button.dart';
import 'package:jobsque/presentation/widgets/main_textfield.dart';
import 'package:jobsque/presentation/widgets/main_titleblock.dart';
import 'package:jobsque/presentation/widgets/socialbutton.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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
                  title: AppStrings.loginTitle, subtitle: AppStrings.loginBody),
              SizedBox(
                height: AppSize.s16,
              ),
              MainTextField(
                  icon: Icons.person_2_outlined,
                  hintText: AppStrings.username,
                  controller: td),
              MainTextField(
                  icon: Icons.lock_outline,
                  hintText: AppStrings.password,
                  controller: td),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(AppSize.s4)),
                    value: false,
                    onChanged: (value) {},
                  ),
                  Text(
                    AppStrings.rememberMe,
                    style: Theme.of(context).textTheme.titleMedium!.apply(
                      color: ColorManager.neutral800,
                    ),
                  ),
                  Spacer(flex: AppSize.s1.toInt()),
                  TextButton(
                    child: Text(AppStrings.forgotPassword,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .apply(color: ColorManager.primary500)),
                    onPressed: () {},
                  ),
                ],
              ),
              Spacer(flex: AppSize.s1.toInt()),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppStrings.dontHaveAccountQuestion,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .apply(color: ColorManager.neutral400),
                  ),
                  TextButton(
                    child: Text(AppStrings.register,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .apply(color: ColorManager.primary500)),
                    onPressed: () {},
                  ),
                ],
              ),
              MainButton(text: AppStrings.loginTitle, onPress: () {}),
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
                      AppStrings.loginOption,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  )
                ],
              ),
              SocialButtons(),
            ],
          ),
        ));
  }
}
