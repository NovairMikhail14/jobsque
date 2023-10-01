import 'package:flutter/material.dart';
import 'package:jobsque/presentation/widgets/main_listtile.dart';
import 'package:jobsque/presentation/widgets/main_button.dart';
import 'package:jobsque/presentation/widgets/main_textfield.dart';
import 'package:jobsque/presentation/widgets/main_titleblock.dart';
import 'package:jobsque/resources/assets_manager.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/font_manager.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';
import 'package:toggle_switch/toggle_switch.dart';

class EducationView extends StatefulWidget {
  const EducationView({Key? key}) : super(key: key);

  @override
  State<EducationView> createState() => _EducationViewState();
}

class _EducationViewState extends State<EducationView> {
  TextEditingController td = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorManager.general,
          title: Text(AppStrings.education),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: AppPadding.p14),
            child: Expanded(
              child: Container(
                padding: EdgeInsets.all(AppPadding.p12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSize.s12),
                  border: Border.all(color: ColorManager.neutral300)
                ),
                child: Column(
                    children: [
                      MainTextField(hintText: AppStrings.eduUniversity,controller: td,isTitle: true),
                      MainTextField(hintText: AppStrings.eduTitle,controller: td,isTitle: true),
                      MainTextField(hintText: AppStrings.eduStartYear,controller: td,isTitle: true),
                      MainTextField(hintText: AppStrings.eduEndYear,controller: td,isTitle: true),
                      SizedBox(
                        height: AppSize.s20,
                      ),
                      MainButton(text: AppStrings.btnSave, onPress: (){}),

                    ]
                ),
              ),
            ),
          ),
        )
    );
  }
}
