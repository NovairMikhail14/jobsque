import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/presentation/widgets/main_button.dart';
import 'package:jobsque/presentation/widgets/main_radioswitch.dart';
import 'package:jobsque/presentation/widgets/main_titleblock.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/routes_manager.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';

import '../../widgets/job_steps.dart';

class TypeWorkView extends StatefulWidget {
  const TypeWorkView({Key? key}) : super(key: key);

  @override
  State<TypeWorkView> createState() => _TypeWorkViewState();
}

class _TypeWorkViewState extends State<TypeWorkView> {
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
                  JobSteps(isboarder: false,indexComplete: 1),
                  Text(AppStrings.appliedJobWork,style:Theme.of(context).textTheme.headlineSmall,),
                  Text(AppStrings.appliedJobDataCorrect,style:Theme.of(context).textTheme.bodyMedium,),

                  MainRadioTile(),
                  MainButton(text: AppStrings.btnNext, onPress: (){
                    Navigator.of(context).pushNamed(Routes.UploadPortfolioViewRoute);
                  }),
                ],
              )
          ),
        )
    );
  }
}
