import 'package:flutter/material.dart';
import 'package:jobsque/presentation/widgets/main_listtile.dart';
import 'package:jobsque/presentation/widgets/main_switchtile.dart';
import 'package:jobsque/presentation/widgets/main_textfield.dart';
import 'package:jobsque/presentation/widgets/main_titleblock.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';
import 'package:flutter/cupertino.dart';

class TwoStepValidationPhoneNoView extends StatefulWidget {
  const TwoStepValidationPhoneNoView({Key? key}) : super(key: key);

  @override
  State<TwoStepValidationPhoneNoView> createState() =>
      _TwoStepValidationPhoneNoViewState();
}

class _TwoStepValidationPhoneNoViewState
    extends State<TwoStepValidationPhoneNoView> {
  TextEditingController td = TextEditingController();
  bool switchVar = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorManager.general,
          title: const Text(AppStrings.lsAccAccVerification),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p14),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      AppStrings.lsAccAccVerfAddPhoneTitle,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    SizedBox(
                      height: AppSize.s4,
                    ),
                    Container(
                      child: Text(
                        AppStrings.lsAccAccVerfAddPhoneBody,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
              MainTextField(hintText: AppStrings.lsAccAccPhone, controller: td),
              SizedBox(
                height: AppSize.s12,
              ),
              MainTextField(
                hintText: AppStrings.lsAccAccVerfEnterPassword,
                controller: td,
                isTitleBlack: true,
                isTitle: true,
              ),
            ],
          ),
        ));
  }
}
