import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/presentation/widgets/add_pdf.dart';
import 'package:jobsque/presentation/widgets/job_steps.dart';
import 'package:jobsque/presentation/widgets/job_tile.dart';
import 'package:jobsque/presentation/widgets/main_button.dart';
import 'package:jobsque/presentation/widgets/language_radioswitch.dart';
import 'package:jobsque/presentation/widgets/main_radioswitch.dart';
import 'package:jobsque/presentation/widgets/main_switchtile.dart';
import 'package:jobsque/presentation/widgets/main_textfield.dart';
import 'package:jobsque/presentation/widgets/main_titleblock.dart';
import 'package:jobsque/presentation/widgets/toggleswitch.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';

class UploadPortfolioView extends StatefulWidget {
  const UploadPortfolioView({Key? key}) : super(key: key);

  @override
  State<UploadPortfolioView> createState() => _UploadPortfolioViewState();
}

class _UploadPortfolioViewState extends State<UploadPortfolioView> {
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
                  JobSteps(isboarder: false,indexComplete: 2),
                  Text(AppStrings.appliedJobUploadPortfolio,style:Theme.of(context).textTheme.headlineSmall,),
                  Text(AppStrings.appliedJobDataCorrect,style:Theme.of(context).textTheme.bodyMedium,),
                  SizedBox(height: AppSize.s12,),
                  Text(AppStrings.appliedJobUploadCV,style:Theme.of(context).textTheme.titleMedium,),
                  SizedBox(height: AppSize.s12,),
                  Text(AppStrings.appliedJobOtherFile,style:Theme.of(context).textTheme.titleMedium,),
                  AddPDF(),
                  MainButton(text: AppStrings.btnSubmitted, onPress: (){}),
                ],
              )
          ),
        )
    );
  }
}
