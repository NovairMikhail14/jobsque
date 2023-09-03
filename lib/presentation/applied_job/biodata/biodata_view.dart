import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/presentation/widgets/job_steps.dart';
import 'package:jobsque/presentation/widgets/job_tile.dart';
import 'package:jobsque/presentation/widgets/main_button.dart';
import 'package:jobsque/presentation/widgets/language_radioswitch.dart';
import 'package:jobsque/presentation/widgets/main_switchtile.dart';
import 'package:jobsque/presentation/widgets/main_textfield.dart';
import 'package:jobsque/presentation/widgets/main_titleblock.dart';
import 'package:jobsque/presentation/widgets/toggleswitch.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';

class BioDataView extends StatefulWidget {
  const BioDataView({Key? key}) : super(key: key);

  @override
  State<BioDataView> createState() => _BioDataViewState();
}

class _BioDataViewState extends State<BioDataView> {
  TextEditingController td = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorManager.general,
          title: const Text(AppStrings.appliedJob),
        ),
        body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: AppPadding.p14),
            width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset("",height: AppSize.s20),
                  MainTitleBlock(title: "#Job", subtitle: "#Jobubtitle",textAlign: TextAlign.center,alignment: CrossAxisAlignment.center),
                  JobSteps(isboarder: false,),
                  Text(AppStrings.appliedJobBioData,style:Theme.of(context).textTheme.headlineSmall,),
                  Text(AppStrings.appliedJobDataCorrect,style:Theme.of(context).textTheme.bodyMedium,),
                  MainTextField(isTitleBlack: true,hintText: AppStrings.appliedJobFullName,controller: td,isTitle: true),
                  MainTextField(isTitleBlack: true,hintText: AppStrings.appliedJobEmail,controller: td,isTitle: true),
                  MainTextField(isTitleBlack: true,hintText: AppStrings.appliedJobHandPhoneNo,controller: td,isTitle: true),
                  MainButton(text: AppStrings.btnSave, onPress: (){}),
                ],
              )
          ),
        )
    );
  }
}
