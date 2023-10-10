import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/presentation/widgets/main_button.dart';
import 'package:jobsque/presentation/widgets/main_textfield.dart';
import 'package:jobsque/presentation/widgets/main_titleblock.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/routes_manager.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';

import '../../widgets/job_steps.dart';

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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius:
                            BorderRadius.all(Radius.circular(AppSize.s12)),
                        child: Image.network("",
                            height: AppSize.s60, alignment: Alignment.center),
                      ),
                    ],
                  ),
                  MainTitleBlock(
                      title: "#Job",
                      subtitle: "#Jobubtitle",
                      textAlign: TextAlign.center,
                      alignment: CrossAxisAlignment.center),
                  SizedBox(
                    height: AppSize.s20,
                  ),
                  JobSteps(
                    isboarder: false,indexComplete: 0,
                  ),
                  Text(
                    AppStrings.appliedJobBioData,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  Text(
                    AppStrings.appliedJobDataCorrect,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  MainTextField(
                      iconAppear: true,
                      icon: Icons.person_outline,
                      isTitleBlack: true,
                      hintText: AppStrings.appliedJobFullName,
                      controller: td,
                      isTitle: true),
                  MainTextField(
                      iconAppear: true,
                      icon: Icons.mail_outline,
                      isTitleBlack: true,
                      hintText: AppStrings.appliedJobEmail,
                      controller: td,
                      isTitle: true),
                  MainTextField(
                      iconAppear: true,
                      icon: Icons.phone,
                      isTitleBlack: true,
                      hintText: AppStrings.appliedJobHandPhoneNo,
                      controller: td,
                      isTitle: true),
                  SizedBox(
                    height: AppSize.s60,
                  ),
                  MainButton(text: AppStrings.btnNext, onPress: () {
                    Navigator.of(context).pushNamed(Routes.TypeWorkViewRoute);
                  }),
                ],
              )),
        ));
  }
}
