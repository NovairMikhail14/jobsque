import 'package:flutter/material.dart';
import 'package:jobsque/presentation/widgets/main_button.dart';
import 'package:jobsque/presentation/widgets/main_textfield.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';

class ExperienceView extends StatefulWidget {
  const ExperienceView({Key? key}) : super(key: key);

  @override
  State<ExperienceView> createState() => _ExperienceViewState();
}

class _ExperienceViewState extends State<ExperienceView> {
  TextEditingController td = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorManager.general,
          title: Text(AppStrings.experience),
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
                      MainTextField(hintText: AppStrings.expPosition,controller: td,isTitle: true),
                      MainTextField(hintText: AppStrings.expWork,controller: td,isTitle: true),
                      MainTextField(hintText: AppStrings.expCompany,controller: td,isTitle: true),
                      MainTextField(hintText: AppStrings.expLocation,controller: td,isTitle: true),
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
                            AppStrings.expLocationCheckBox,
                            style: Theme.of(context).textTheme.titleSmall!.apply(
                              color: ColorManager.neutral800,
                            ),
                          ),
                        ],
                      ),
                      MainTextField(hintText: AppStrings.expStartYear,controller: td,isTitle: true),
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
