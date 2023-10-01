import 'package:flutter/material.dart';
import 'package:jobsque/presentation/widgets/main_button.dart';
import 'package:jobsque/presentation/widgets/main_switchtile.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';

class TwoStepValidationView extends StatefulWidget {
  const TwoStepValidationView({super.key});

  @override
  State<TwoStepValidationView> createState() => _TwoStepValidationViewState();
}

class _TwoStepValidationViewState extends State<TwoStepValidationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.general,
        title: Text(AppStrings.lsAccAccVerification),
      ),
      body: Container(
        padding: EdgeInsets.all(AppPadding.p12),
        child: Column(
          children: [
            MainSwitchTile(border: true,text: AppStrings.lsAccAccVerificationToggle),
            SizedBox(height: AppSize.s12,),
            Row(
              children: [
                CircleAvatar(
                  radius: AppSize.s22,
                  child: Icon(Icons.lock_outline_rounded),
                  backgroundColor: ColorManager.primary100,
                ),
                SizedBox(
                  width: AppSize.s20,
                ),
                Container(
                  width: AppSize.s250,
                    child: Text(AppStrings.lsAccAccVerificationMark1,maxLines: 3,))
              ],
            ),
            SizedBox(height: AppSize.s12,),
            Row(
              children: [
                CircleAvatar(
                  radius: AppSize.s22,
                  backgroundColor: ColorManager.primary100,
                  child: Icon(Icons.drive_file_move_outline),
                ),
                SizedBox(
                  width: AppSize.s20,
                ),
                Container(
                    width: AppSize.s250,
                    child: Text(AppStrings.lsAccAccVerificationMark2,maxLines: 3,))
              ],
            ),
            Spacer(flex: 1,),
            MainButton(text: AppStrings.btnNext, onPress: (){})
          ],
        ),
      ),
    );
  }
}
