import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/presentation/widgets/job_steps.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';

class JobDescription extends StatelessWidget {
  List descriptionList;
  int salary;
  String period;
  bool isCenter;
  bool isDark;
  Color? color;

  JobDescription(
      {required this.descriptionList,
        this.isCenter = false,
        this.color = null,
        this.isDark = false,
        this.salary=0,
        this.period = ""});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: List.generate(descriptionList.length, (index) {
                return Container(
                    padding: EdgeInsets.fromLTRB(AppPadding.p12, AppPadding.p10,
                        AppPadding.p12, AppPadding.p10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppSize.s20),
                        color: color == null
                            ? (isDark
                            ? ColorManager.general.withOpacity(0.14)
                            : ColorManager.primary100)
                            : color),
                    child: Text(
                      descriptionList[index],
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: isDark
                              ? ColorManager.general
                              : ColorManager.primary500),
                    ),
                    margin: isCenter
                        ? EdgeInsets.only(
                        right: AppMargin.m4,
                        bottom: AppMargin.m10,
                        top: AppMargin.m10)
                        : EdgeInsets.only(
                        right: AppMargin.m10,
                        bottom: AppMargin.m10,
                        top: AppMargin.m10));
              })),
          SizedBox(width: salary != 0 ? AppSize.s80:0,),
          Text(period != "" ? "Posted $period days ago" : ""),
          Text(
            salary != 0? "\$${(salary/ 1000).toString().split(".")[0] }K" : "",
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: ColorManager.success700,
            ),
          ),
          Text(salary != 0 ? "/ Month" : ""),
        ],
      ),
    );
  }
}
