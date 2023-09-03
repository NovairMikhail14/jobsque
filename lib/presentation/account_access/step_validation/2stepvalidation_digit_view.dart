import 'package:flutter/material.dart';
import 'package:jobsque/presentation/widgets/main_listtile.dart';
import 'package:jobsque/presentation/widgets/main_switchtile.dart';
import 'package:jobsque/presentation/widgets/main_textfield.dart';
import 'package:jobsque/presentation/widgets/main_titleblock.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';
import 'package:flutter/cupertino.dart';

class TwoStepValidationDigitView extends StatefulWidget {
  const TwoStepValidationDigitView({Key? key}) : super(key: key);

  @override
  State<TwoStepValidationDigitView> createState() =>
      _TwoStepValidationDigitViewState();
}

class _TwoStepValidationDigitViewState
    extends State<TwoStepValidationDigitView> {
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
                      AppStrings.lsAccAccVerfEnterDigitTitle,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    SizedBox(
                      height: AppSize.s4,
                    ),
                    Text(
                      AppStrings.lsAccAccVerfEnterDigitBody,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: AppSize.s12,
              ),
              Container(
                height: 44,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 44,
                      child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                              contentPadding: const EdgeInsets.all(AppPadding.p20),
                              hintStyle: Theme.of(context).textTheme.bodyMedium,
                              border: const OutlineInputBorder())),
                    ),
                    Container(
                      width: 44,
                      child: TextField(
                          decoration: InputDecoration(
                              isDense: true,
                              contentPadding: const EdgeInsets.all(AppPadding.p20),
                              hintStyle: Theme.of(context).textTheme.bodyMedium,
                              border: const OutlineInputBorder())),
                    ),
                    Container(
                      width: 44,
                      child: TextField(
                          decoration: InputDecoration(
                              isDense: true,
                              contentPadding: const EdgeInsets.all(AppPadding.p20),
                              hintStyle: Theme.of(context).textTheme.bodyMedium,
                              border: const OutlineInputBorder())),
                    ),
                    Container(
                      width: 44,
                      child: TextField(
                          decoration: InputDecoration(
                              isDense: true,
                              contentPadding: const EdgeInsets.all(AppPadding.p20),
                              hintStyle: Theme.of(context).textTheme.bodyMedium,
                              border: const OutlineInputBorder())),
                    ),
                    Container(
                      width: 44,
                      child: TextField(
                          decoration: InputDecoration(
                              isDense: true,
                              contentPadding: const EdgeInsets.all(AppPadding.p20),
                              hintStyle: Theme.of(context).textTheme.bodyMedium,
                              border: const OutlineInputBorder())),
                    ),
                    Container(
                      width: 44,
                      child: TextField(
                          decoration: InputDecoration(
                              isDense: true,
                              contentPadding: const EdgeInsets.all(AppPadding.p20),
                              hintStyle: Theme.of(context).textTheme.bodyMedium,
                              border: const OutlineInputBorder())),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: AppSize.s12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.lsAccAccVerfResendCode,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .apply(color: ColorManager.neutral400),
                  ),
                  Text("AAA",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .apply(color: ColorManager.primary500)),
                ],
              ),
            ],
          ),
        ));
  }
}
