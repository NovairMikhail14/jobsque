import 'package:flutter/material.dart';
import 'package:jobsque/presentation/widgets/main_button.dart';
import 'package:jobsque/presentation/widgets/main_textfield.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';

class ChangePasswordView extends StatefulWidget {
  const ChangePasswordView({Key? key}) : super(key: key);

  @override
  State<ChangePasswordView> createState() => _ChangePasswordViewState();
}

class _ChangePasswordViewState extends State<ChangePasswordView> {
  TextEditingController td = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorManager.general,
          title: Text(AppStrings.lsAccAccPassword),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: AppPadding.p14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MainTextField(
                  isTitle: true,
                  isTitleBlack: true,
                  icon: Icons.lock_outlined,
                  hintText: AppStrings.lsAccAccPasswordOld,
                  controller: td),
              SizedBox(
                height: AppSize.s8,
              ),
              MainTextField(
                  isTitle: true,
                  isTitleBlack: true,
                  icon: Icons.lock_outlined,
                  hintText: AppStrings.lsAccAccPasswordNew,
                  controller: td),
              SizedBox(
                height: AppSize.s8,
              ),
              MainTextField(
                  isTitle: true,
                  isTitleBlack: true,
                  icon: Icons.lock_outlined,
                  hintText: AppStrings.lsAccAccPasswordConfirm,
                  controller: td),
              Spacer(flex: AppSize.s1.toInt()),
              MainButton(text: AppStrings.btnSave, onPress: () {}),
            ],
          ),
        ));
  }
}
