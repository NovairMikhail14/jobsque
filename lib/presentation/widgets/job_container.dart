import 'package:flutter/material.dart';
import 'package:jobsque/presentation/widgets/job_description.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/value_manager.dart';
import 'job_tile.dart';

class JobContainer extends StatelessWidget {
  String title;
  String subtitle;
  String imagePath;
  bool isDark;

  JobContainer(
      {required this.title,
        this.isDark = false,
        required this.subtitle,
        required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorManager.danger500,
      margin: const EdgeInsets.only(bottom: AppSize.s12),
      padding: const EdgeInsets.all(AppSize.s12),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(width: 2, color: ColorManager.neutral200))),
      child: Column(
        children: [
          JobTile(
            isDark: isDark,
            title: (title),
            subtitle: (subtitle),
            imagePath: (imagePath),
          ),
          JobDescription(
            isDark: isDark,
            // isCenter: true,
            descriptionList: ["Remote", "FullTime"],
          ),
          SizedBox(
            height: AppSize.s10,
          ),
          // JobSteps()
        ],
      ),
    );
  }
}
