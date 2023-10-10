import 'package:flutter/material.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';

class JobSteps extends StatelessWidget {
  bool isboarder;
  int indexComplete;

  JobSteps({this.isboarder = true, this.indexComplete = 0});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
          AppPadding.p12, AppPadding.p10, AppPadding.p12, AppPadding.p10),
      decoration: BoxDecoration(
        border: isboarder ? Border.all(color: ColorManager.neutral300) : null,
        borderRadius: isboarder ? BorderRadius.circular(AppSize.s8) : null,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            // width: AppSize.s85,
            child: Column(
              children: [
                CircleAvatar(
                  radius: isboarder ? AppSize.s14 : AppSize.s24,
                  backgroundColor: colorBorderTheme(context, indexComplete, 1),
                  child: CircleAvatar(
                    child: (indexComplete >= 1) ? Icon(Icons.check) : Text("1",style: TextStyle(
                      color: colorBorderTheme(context, indexComplete, 1)
                    )),
                    radius: isboarder ? AppSize.s12 : AppSize.s22,
                    backgroundColor: colorTheme(context, indexComplete, 1),
                  ),
                ),
                SizedBox(
                  height: AppSize.s4,
                ),
                Text(AppStrings.appliedJobBioData,
                    style: textTheme(context, indexComplete, 1))
              ],
            ),
          ),
          Container(
            child: Text("----", style: textTheme(context, indexComplete, 2)),
          ),
          Container(
            // width: AppSize.s85,
            child: Column(
              children: [
                CircleAvatar(
                  radius: isboarder ? AppSize.s14 : AppSize.s24,
                  backgroundColor: colorBorderTheme(context, indexComplete, 2),
                  child: CircleAvatar(
                    child: (indexComplete >= 2) ? Icon(Icons.check) : Text("2",style: TextStyle(
                        color: colorBorderTheme(context, indexComplete, 2)
                    )),
                    radius: isboarder ? AppSize.s12 : AppSize.s22,
                    backgroundColor: colorTheme(context, indexComplete, 2),
                  ),
                ),
                SizedBox(
                  height: AppSize.s4,
                ),
                Text(AppStrings.appliedJobWork,
                    style: textTheme(context, indexComplete, 2))
              ],
            ),
          ),
          Container(
            child: Text("----", style: textTheme(context, indexComplete, 3)),
          ),
          Container(
            // width: AppSize.s85,
            child: Column(
              children: [
                CircleAvatar(
                  radius: isboarder ? AppSize.s14 : AppSize.s24,
                  backgroundColor: colorBorderTheme(context, indexComplete, 3),
                  child: CircleAvatar(
                    child: (indexComplete >= 3) ? Icon(Icons.check) : Text("3",style: TextStyle(
                        color: colorBorderTheme(context, indexComplete, 3)
                    )),
                    radius: isboarder ? AppSize.s12 : AppSize.s22,
                    backgroundColor: colorTheme(context, indexComplete, 3),
                  ),
                ),
                SizedBox(
                  height: AppSize.s4,
                ),
                Text(AppStrings.appliedJobUploadPortfolio,
                    style: textTheme(context, indexComplete, 3))
              ],
            ),
          ),
        ],
      ),
    );
  }

  TextStyle textTheme(BuildContext context, int index, int stageNo) {
    if (index == (stageNo - 1)) {
      return Theme.of(context)
          .textTheme
          .bodySmall!
          .copyWith(color: ColorManager.primary500);
    } else
    if (index < stageNo) {
      return Theme.of(context)
          .textTheme
          .bodySmall!
          .copyWith(color: ColorManager.neutral900);
    } else {
      return Theme.of(context)
          .textTheme
          .bodySmall!
          .copyWith(color: ColorManager.primary500);
    }
  }

  Color colorTheme(BuildContext context, int index, int stageNo) {
    if (index < stageNo) {
      return ColorManager.general;
    } else if (index == (stageNo - 1)) {
      return ColorManager.primary500;
    } else {
      return ColorManager.primary500;
    }
  }

  Color colorBorderTheme(BuildContext context, int index, int stageNo) {
    if (index == (stageNo - 1)) {
      return ColorManager.primary500;
    } else if (index < stageNo) {
      return ColorManager.neutral400;
    } else {
      return ColorManager.primary500;
    }
  }
}
