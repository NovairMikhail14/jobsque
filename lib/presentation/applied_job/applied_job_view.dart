import 'package:flutter/material.dart';
import 'package:jobsque/presentation/widgets/job_description.dart';
import 'package:jobsque/presentation/widgets/job_steps.dart';
import 'package:jobsque/presentation/widgets/job_tile.dart';
import 'package:jobsque/presentation/widgets/language_radioswitch.dart';
import 'package:jobsque/presentation/widgets/main_switchtile.dart';
import 'package:jobsque/presentation/widgets/toggleswitch.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';

class AppliedJobView extends StatefulWidget {
  const AppliedJobView({Key? key}) : super(key: key);

  @override
  State<AppliedJobView> createState() => _AppliedJobViewState();
}

class _AppliedJobViewState extends State<AppliedJobView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorManager.general,
          title: const Text(AppStrings.appliedJob),
        ),
        body: Container(
            child: Column(
              children: [
                MainToggleSwitch(list: [AppStrings.appliedJobActive,AppStrings.appliedJobRejected],index: 0,onToggle: (p0) {

                },),
                SizedBox(height: AppSize.s20,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: AppPadding.p8),
                  alignment: Alignment.centerLeft,
                  color: ColorManager.neutral200,
                  height:AppSize.s36 ,
                  width: MediaQuery.of(context).size.width,
                  child: Text(AppStrings.notfJob),
                ),
          Container(
            margin: const EdgeInsets.only(bottom:  AppSize.s12),
            padding: const EdgeInsets.all(AppSize.s12),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        width: 2,
                        color: ColorManager.neutral200
                    )
                )
            ),
            child: Column(
              children: [
                JobTile(title: "A",subtitle: "A",imagePath: "",),
                JobDescription(descriptionList: ["Remote","FullTime"],),
                SizedBox(height: AppSize.s10,),
                JobSteps()
              ],
            ),
          )
              ],
            )
        )
    );
  }
}
