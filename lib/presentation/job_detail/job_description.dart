import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/presentation/widgets/job_description.dart';
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

class JobDescriptionView extends StatefulWidget {
  const JobDescriptionView({Key? key}) : super(key: key);

  @override
  State<JobDescriptionView> createState() => _JobDescriptionViewState();
}

class _JobDescriptionViewState extends State<JobDescriptionView> {
  TextEditingController td = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
            padding: EdgeInsets.symmetric(horizontal: AppPadding.p14),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.jobDescription,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  AppStrings.appliedJobDataCorrect,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Text(
                  AppStrings.jobSkillRequired,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  AppStrings.appliedJobDataCorrect,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ));
  }
}
