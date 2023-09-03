import 'package:flutter/material.dart';
import 'package:jobsque/presentation/widgets/main_listtile.dart';
import 'package:jobsque/presentation/widgets/main_switchtile.dart';
import 'package:jobsque/presentation/widgets/main_textfield.dart';
import 'package:jobsque/presentation/widgets/main_titleblock.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';
import 'package:flutter/cupertino.dart';

class TermsConditionsView extends StatefulWidget {
  const TermsConditionsView({Key? key}) : super(key: key);

  @override
  State<TermsConditionsView> createState() =>
      _TermsConditionsViewState();
}

class _TermsConditionsViewState
    extends State<TermsConditionsView> {
  TextEditingController td = TextEditingController();
  bool switchVar = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorManager.general,
          title: const Text(AppStrings.termsConditions),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p14),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.termsConditionsTitle1,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              SizedBox(
                height: AppSize.s4,
              ),
              Text(
                AppStrings.termsConditionsBody,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                AppStrings.termsConditionsTitle2,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              SizedBox(
                height: AppSize.s4,
              ),
              Text(
                AppStrings.termsConditionsBody2_1,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(
                height: AppSize.s4,
              ),
              Container(
                color: ColorManager.neutral200,
                padding: EdgeInsets.all(AppSize.s10),
                child: Text(
                  AppStrings.termsConditionsBody2_2,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              SizedBox(
                height: AppSize.s4,
              ),
              Text(
                AppStrings.termsConditionsBody2_3,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ));
  }
}
