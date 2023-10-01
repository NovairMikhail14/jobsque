import 'package:flutter/material.dart';
import 'package:jobsque/presentation/widgets/main_listtile.dart';
import 'package:jobsque/presentation/widgets/main_switchtile.dart';
import 'package:jobsque/presentation/widgets/main_textfield.dart';
import 'package:jobsque/presentation/widgets/main_titleblock.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';
import 'package:flutter/cupertino.dart';

class HelpCenterView extends StatefulWidget {
  const HelpCenterView({Key? key}) : super(key: key);

  @override
  State<HelpCenterView> createState() =>
      _HelpCenterViewState();
}

class _HelpCenterViewState
    extends State<HelpCenterView> {
  TextEditingController td = TextEditingController();
  bool switchVar = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorManager.general,
          title: const Text(AppStrings.helpCenter),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p14),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(600)
                ),
                child: TextField(
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.fromLTRB(AppPadding.p17, AppPadding.p12, AppPadding.p17, AppPadding.p12),
                        prefixIcon:Icon(Icons.search),
                        hintText: AppStrings.helpCenterSearch,
                        hintStyle: Theme.of(context).textTheme.bodyMedium,)),
              ),
            ],
          ),
        ));
  }
}
