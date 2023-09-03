import 'package:flutter/material.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';

class JobSteps extends StatefulWidget {
  bool isboarder;

  JobSteps({this.isboarder = true});

  @override
  State<JobSteps> createState() => _JobStepsState();
}

class _JobStepsState extends State<JobSteps> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(AppPadding.p12, AppPadding.p10, AppPadding.p12, AppPadding.p10),
      decoration: BoxDecoration(
        border:widget.isboarder? Border.all(color: ColorManager.neutral300):null,
        borderRadius: widget.isboarder? BorderRadius.circular(AppSize.s8):null,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: AppSize.s85,
            child: Column(
              children: [
                CircleAvatar(
                  child: Text("1"),
                  radius:widget.isboarder? AppSize.s12:AppSize.s22,
                  backgroundColor: ColorManager.primary500,
                ),
                SizedBox(height: AppSize.s4,),
                Text(AppStrings.appliedJobBioData,style: Theme.of(context).textTheme.bodySmall!.copyWith(color: ColorManager.primary500),)
              ],
            ),
          ),
          Container(
            child: Text("----"),
          ),
          Container(
            width: AppSize.s85,
            child: Column(
              children: [
                CircleAvatar(
                  child: Text("1"),
                  radius: widget.isboarder? AppSize.s12:AppSize.s22,
                  backgroundColor: ColorManager.primary500,
                ),
                SizedBox(height: AppSize.s4,),
                Text(AppStrings.appliedJobWork,style: Theme.of(context).textTheme.bodySmall!.copyWith(color: ColorManager.primary500),)
              ],
            ),
          ),
          Container(
            child: Text("----"),
          ),
          Container(
            width: AppSize.s85,
            child: Column(
              children: [
                CircleAvatar(
                  child: Text("1"),
                  radius: widget.isboarder? AppSize.s12:AppSize.s22,
                  backgroundColor: ColorManager.primary500,
                ),
                SizedBox(height: AppSize.s4,),
                Text(AppStrings.appliedJobUploadPortfolio,style: Theme.of(context).textTheme.bodySmall!.copyWith(color: ColorManager.primary500),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
