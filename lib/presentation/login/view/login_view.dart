import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque/presentation/login/cubit/login_cubit.dart';
import 'package:jobsque/presentation/widgets/main_button.dart';
import 'package:jobsque/presentation/widgets/main_textfield.dart';
import 'package:jobsque/presentation/widgets/main_titleblock.dart';
import 'package:jobsque/presentation/widgets/socialbutton.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';

import '../../create_account/create_account_view.dart';
import '../../reset_password/reset_password_view.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);
  TextEditingController td = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();
  String? email, password;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
  builder: (context, state) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Icon(Icons.abc),
          ],
        ),
        body: Form(
          key: formKey,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: AppPadding.p14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MainTitleBlock(
                    title: AppStrings.loginTitle, subtitle: AppStrings.loginBody,),
                SizedBox(
                  height: AppSize.s16,
                ),
                MainTextField(
                  onChanged: (data) {
                    email = data ;
                  },
                    icon: Icons.person_2_outlined,
                    hintText: AppStrings.username,
                    ),
                MainTextField(
                    onChanged: (data) {
                      password = data ;
                    },
                    icon: Icons.lock_outline,
                    obscureText: true,
                    hintText: AppStrings.password,
                    ),
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
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ResetPasswordView(),));
                      },
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
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => CreateAccountView(),));
                      },
                    ),
                  ],
                ),
                MainButton(text: AppStrings.loginTitle, onPress: () {
                  print("email");
                  if(formKey.currentState!.validate()){
                    BlocProvider.of<LoginCubit>(context).login(email!,password!);
                    print(email);
                  }  print("No email");

                }),
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
          ),
        ));
  },
);
  }
}
