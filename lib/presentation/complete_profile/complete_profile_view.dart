import 'package:flutter/material.dart';
import 'package:jobsque/presentation/widgets/main_button.dart';
import 'package:jobsque/presentation/widgets/main_textfield.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CompleteProfileView extends StatefulWidget {
  const CompleteProfileView({Key? key}) : super(key: key);

  @override
  State<CompleteProfileView> createState() => _CompleteProfileViewState();
}

class _CompleteProfileViewState extends State<CompleteProfileView> {
  TextEditingController td = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorManager.general,
          title: Text(AppStrings.experience),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: AppPadding.p14),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircularPercentIndicator(
                  radius: AppSize.s50,
                  lineWidth: AppSize.s8,
                  animation: true,
                  percent: 0.7,
                  center: new Text(
                    "70.0%",
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(color: ColorManager.primary500),
                  ),
                  footer: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "2/4 Completed",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(color: ColorManager.primary500),
                      ),
                      SizedBox(height: AppSize.s10),
                      Text(
                        AppStrings.completeProfileBody,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: ColorManager.primary500,
                ),
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Column(
                      children: [
                        Container(width: 2, height: 100, color: Colors.red),
                        Container(width: 2, height: 100, color: Colors.red),
                        Container(width: 2, height: 100, color: Colors.red),
                      ],
                    ),
                    Column(
                      children: [
                        listTileComplete(AppStrings.personalDetails,
                            AppStrings.personalDetailsBody),
                        listTileComplete(
                            AppStrings.education, AppStrings.educationBody),
                        listTileComplete(
                            AppStrings.experience, AppStrings.experienceBody),
                        listTileComplete(
                            AppStrings.portfolio, AppStrings.prtfoBody),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }

  listTileComplete(String title, String subTitle) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSize.s8),
          color: ColorManager.neutral100,
          border: Border.all(color: ColorManager.neutral300, width: 2)),
      padding: EdgeInsets.symmetric(
          horizontal: AppPadding.p8, vertical: AppPadding.p8),
      margin: EdgeInsets.symmetric(vertical: AppSize.s4),
      child: ListTile(
        tileColor: ColorManager.neutral100,
        dense: true,
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        leading: CircleAvatar(
          radius: AppSize.s20,
          backgroundColor: ColorManager.neutral300,
          child: Icon(Icons.check, color: ColorManager.neutral100),
        ),
        trailing: Icon(
          Icons.arrow_forward,
          color: ColorManager.neutral900,
        ),
        subtitle: Container(
            width: 100,
            child: Text(
              subTitle,
              style: Theme.of(context).textTheme.bodySmall,
            )),
      ),
    );
  }
}
