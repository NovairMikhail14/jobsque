import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobsque/presentation/pages_auth/create_account/register_cubit/register_cubit.dart';
import 'package:jobsque/presentation/widgets/main_button.dart';
import 'package:jobsque/presentation/widgets/main_textfield.dart';
import 'package:jobsque/presentation/widgets/main_titleblock.dart';
import 'package:jobsque/presentation/widgets/socialbutton.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/routes_manager.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';

import '../../../resources/assets_manager.dart';
import '../login/view/login_view.dart';

class CreateAccountView extends StatelessWidget {
  CreateAccountView({Key? key}) : super(key: key);
  final GlobalKey<FormState> formKey = GlobalKey();
  String? email, name, password;
  String? emailValidation, passwordValidation;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      child: Scaffold(
          appBar: AppBar(
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(ImageAssets.logo, height: AppSize.s20),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: BlocConsumer<RegisterCubit, RegisterState>(
                listener: (context, state) async {
                  if (state is RegisterFailed) {
                    print("----> RegisterFailed");
                    // emailValidation = await BlocProvider.of<RegisterCubit>(context).massageEmail.toString();
                    // passwordValidation = await BlocProvider.of<RegisterCubit>(context).massagePassword.toString();
                    // print("---->$emailValidation");
                    // print("---->$passwordValidation");
                  } else if (state is RegisterSuccess) {
                    print("----> RegisterSuccess");
                    Navigator.of(context)
                        .pushReplacementNamed(Routes.InterestsViewRoute);
                  }
                },
                builder: (context, state) {
                  return Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: AppPadding.p14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MainTitleBlock(
                            title: AppStrings.createAccountTitle,
                            subtitle: AppStrings.createAccountBody),
                        SizedBox(
                          height: AppSize.s4,
                        ),
                        MainTextField(
                          onChanged: (value) {
                            name = value;
                          },
                          icon: Icons.person_2_outlined,
                          hintText: AppStrings.username,
                        ),
                        MainTextField(
                          onChanged: (value) {
                            email = value;
                          },
                          validationMessage:
                              BlocProvider.of<RegisterCubit>(context)
                                  .massageEmail
                                  .toString(),
                          icon: Icons.email_outlined,
                          hintText: AppStrings.email,
                        ),
                        MainTextField(
                          onChanged: (value) {
                            password = value;
                          },
                          validationMessage:
                              BlocProvider.of<RegisterCubit>(context)
                                  .massagePassword
                                  .toString(),
                          icon: Icons.lock_outline,
                          hintText: AppStrings.password,
                        ),
                        Text(
                          AppStrings.passwordValidation,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .apply(color: ColorManager.neutral400),
                        ),
                        SizedBox(
                          height: AppSize.s100,
                        ),
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
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginView(),
                                    ));
                              },
                            ),
                          ],
                        ),
                        MainButton(
                            text: AppStrings.createAccountTitle,
                            onPress: () {
                              print(
                                  "-C-->${state}");
                              // BlocProvider.of<RegisterCubit>(context).resetValidation();
                              if (formKey.currentState!.validate()) {
                                (BlocProvider.of<RegisterCubit>(context)
                                    .register(email!, password!, name!));
                                print(
                                    "-C-->${BlocProvider.of<RegisterCubit>(context).massageEmail.toString()}");
                                print(
                                    "-C-->${BlocProvider.of<RegisterCubit>(context).massagePassword.toString()}");
                              }
                            }
                            ),
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
                  );
                },
              ),
            ),
          )),
    );
  }
}
