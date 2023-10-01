import 'package:flutter/material.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';
import 'package:flutter/cupertino.dart';

class PrivacyPolicyView extends StatefulWidget {
  const PrivacyPolicyView({Key? key}) : super(key: key);

  @override
  State<PrivacyPolicyView> createState() =>
      _PrivacyPolicyViewState();
}

class _PrivacyPolicyViewState
    extends State<PrivacyPolicyView> {
  TextEditingController td = TextEditingController();
  bool switchVar = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorManager.general,
          title: const Text(AppStrings.privacyPolicy),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p14),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.privacyPolicyTitle1,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              SizedBox(
                height: AppSize.s4,
              ),
              Text(
                AppStrings.privacyPolicyBody1_1,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                AppStrings.privacyPolicyBody1_2,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                AppStrings.privacyPolicyTitle2,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              SizedBox(
                height: AppSize.s4,
              ),
              Text(
                AppStrings.privacyPolicyBody2,
                style: Theme.of(context).textTheme.bodyMedium,
              ),


            ],
          ),
        ));
  }
}
