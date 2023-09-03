import 'package:flutter/material.dart';
import 'package:jobsque/presentation/widgets/language_radioswitch.dart';
import 'package:jobsque/presentation/widgets/main_switchtile.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({Key? key}) : super(key: key);

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorManager.general,
          title: const Text(AppStrings.language),
        ),
        body: Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: AppPadding.p8),
                  alignment: Alignment.centerLeft,
                  color: ColorManager.neutral200,
                  height:AppSize.s36 ,
                  width: MediaQuery.of(context).size.width,
                  child: Text(AppStrings.notfJob),
                ),
                Column(
                  children: [
                    MainSwitchTile(text: AppStrings.notfJobAlert,border: false ,),
                    MainSwitchTile(text: AppStrings.notfJobUpdate,border: false ,),
                    MainSwitchTile(text: AppStrings.notfJobReminders,border: false ,),
                    MainSwitchTile(text: AppStrings.notfJobInterested,border: false ,),
                    MainSwitchTile(text: AppStrings.notfJobSeekerUpdates,border: false ,),
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: AppPadding.p8),
                  alignment: Alignment.centerLeft,
                  color: ColorManager.neutral200,
                  height:AppSize.s36 ,
                  width: MediaQuery.of(context).size.width,
                  child: Text(AppStrings.notfOther),
                ),
                Column(
                  children: [
                    MainSwitchTile(text: AppStrings.notfOtherProfile,border: false ,),
                    MainSwitchTile(text: AppStrings.notfOtherAllMessage,border: false ,),
                    MainSwitchTile(text: AppStrings.notfOtherNudges,border: false ,),
                  ],
                )
              ],
            )
        )
    );
  }
}
