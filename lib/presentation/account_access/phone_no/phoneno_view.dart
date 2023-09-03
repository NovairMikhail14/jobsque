import 'package:flutter/material.dart';
import 'package:jobsque/presentation/widgets/main_listtile.dart';
import 'package:jobsque/presentation/widgets/main_switchtile.dart';
import 'package:jobsque/presentation/widgets/main_textfield.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';
import 'package:flutter/cupertino.dart';

class PhoneNoView extends StatefulWidget {
  const PhoneNoView({Key? key}) : super(key: key);
  @override
  State<PhoneNoView> createState() => _PhoneNoViewState();
}

class _PhoneNoViewState extends State<PhoneNoView> {
  TextEditingController td  = TextEditingController();
  bool switchVar = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorManager.general,
          title: const Text(AppStrings.lsAccAccPhone),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p14),
          child: Column(
            children: [
              MainTextField(
                hintText: AppStrings.lsAccAccPhone,controller: td,isTitle: true,iconAppear:true,icon:  Icons.email_outlined,
              ),
              SizedBox(
                height: AppSize.s12,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: AppSize.s250,
                    child: Text(AppStrings.lsAccAccPhoneToggle,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(color: ColorManager.neutral500),
                        maxLines: 2),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  CupertinoSwitch(
                    activeColor: ColorManager.primary500,
                    value: switchVar,
                    onChanged: (bool? value) {
                      setState(() {
                        switchVar = value!;
                      });
                    },
                  )
                ],
              ),
            ],
          ),
        )
    );
  }
}
