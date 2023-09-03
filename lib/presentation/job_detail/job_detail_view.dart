import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/presentation/job_detail/job_company.dart';
import 'package:jobsque/presentation/job_detail/job_description.dart';
import 'package:jobsque/presentation/job_detail/job_people.dart';
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

class JobDetailView extends StatefulWidget {
  const JobDetailView({Key? key}) : super(key: key);

  @override
  State<JobDetailView> createState() => _JobDetailViewState();
}

class _JobDetailViewState extends State<JobDetailView> {
  TextEditingController td = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorManager.general,
          title: const Text(AppStrings.appliedJob),
        ),
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: AppPadding.p14),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset("", height: AppSize.s20),
                MainTitleBlock(
                    title: "#Job",
                    subtitle: "#Jobubtitle",
                    textAlign: TextAlign.center,
                    alignment: CrossAxisAlignment.center),
                JobDescription(descriptionList: ["FullPart","Onsite","Senior"],isCenter: true),
                MainToggleSwitch(list: [AppStrings.description,AppStrings.company,AppStrings.people],),
                JobPeopleView(6),
                Spacer(
                  flex: AppSize.s1.toInt(),
                ),
                MainButton(text: AppStrings.btnApplyNow, onPress: () {}),
              ],
            )));
  }
}
