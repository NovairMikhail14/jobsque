import 'package:flutter/material.dart';
import 'package:jobsque/presentation/widgets/main_listtile.dart';
import 'package:jobsque/presentation/widgets/main_textfield.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';

class EmailAddressView extends StatefulWidget {
  const EmailAddressView({Key? key}) : super(key: key);
  @override
  State<EmailAddressView> createState() => _EmailAddressViewState();
}

class _EmailAddressViewState extends State<EmailAddressView> {
  TextEditingController td  = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorManager.general,
          title: const Text(AppStrings.lsAccAccEmail),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p14),
          child: MainTextField(
            hintText: AppStrings.lsAccAccEmailTitle,controller: td,isTitle: true,iconAppear:true,icon:  Icons.email_outlined,
          ),
        )
    );
  }
}
