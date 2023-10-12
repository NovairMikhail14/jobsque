import 'package:flutter/material.dart';
import 'package:jobsque/presentation/widgets/language_radioswitch.dart';
import 'package:jobsque/presentation/widgets/main_switchtile.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';

import '../../../../app/app_pref.dart';
import '../../../../app/di.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({Key? key}) : super(key: key);

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  final AppPreferences _shearedPref = instance<AppPreferences>();
  bool? notfJobAlert;
  bool? notfJobReminders;
  bool? notfJobUpdate;
  bool? notfJobInterested;
  bool? notfJobSeekerUpdates;
  bool? notfOtherProfile;
  bool? notfOtherAllMessage;
  bool? notfOtherNudges;

  @override
  void initState() {
    notfJobAlert =  _shearedPref.getnotfJobAlert();
    notfOtherNudges = _shearedPref.getnotfOtherNudges();
    notfOtherAllMessage = _shearedPref.getnotfOtherAllMessage();
    notfJobSeekerUpdates = _shearedPref.getnotfJobSeekerUpdates();
    notfOtherProfile = _shearedPref.getnotfOtherProfile();
    notfJobInterested = _shearedPref.getnotfJobInterested();
    notfJobReminders =  _shearedPref.getnotfJobReminders();
    notfJobUpdate = _shearedPref.getnotfJobUpdate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorManager.general,
          title: const Text(AppStrings.notification),
        ),
        body: Container(
            padding: EdgeInsets.all(AppPadding.p8),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: AppPadding.p8),
                  alignment: Alignment.centerLeft,
                  color: ColorManager.neutral200,
                  height: AppSize.s36,
                  width: MediaQuery.of(context).size.width,
                  child: Text(AppStrings.notfJob),
                ),
                Column(
                  children: [
                    MainSwitchTile(
                      text: AppStrings.notfJobAlert,
                      border: false,
                      switchVar: notfJobAlert ?? true,
                      onChanged: (p0) {
                        print(notfJobAlert);
                        setState(() {
                          notfJobAlert = p0;
                        });
                        _shearedPref.setnotfJobAlert(notfJobAlert!);
                      },
                    ),
                    MainSwitchTile(
                      text: AppStrings.notfJobUpdate,
                      border: false,
                      switchVar: notfJobUpdate ?? true,
                      onChanged: (p0) {
                        setState(() {
                          notfJobUpdate = p0;
                        });
                        _shearedPref.setnotfJobUpdate(notfJobUpdate!);
                      },
                    ),
                    MainSwitchTile(
                      text: AppStrings.notfJobReminders,
                      border: false,
                      switchVar: notfJobReminders ?? true,
                      onChanged: (p0) {
                        setState(() {
                          notfJobReminders = p0;
                        });
                        _shearedPref.setnotfJobReminders(notfJobReminders!);
                      },
                    ),
                    MainSwitchTile(
                      text: AppStrings.notfJobInterested,
                      border: false,
                      switchVar: notfJobInterested ?? true,
                      onChanged: (p0) {
                        setState(() {
                          notfJobInterested = p0;
                        });
                        _shearedPref.setnotfJobInterested(notfJobInterested!);
                      },
                    ),
                    MainSwitchTile(
                      text: AppStrings.notfJobSeekerUpdates,
                      border: false,
                      switchVar: notfJobSeekerUpdates ?? true,
                      onChanged: (p0) {
                        setState(() {
                          notfJobSeekerUpdates = p0;
                          _shearedPref.setnotfJobSeekerUpdates(p0);
                        });
                      },
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: AppPadding.p8),
                  alignment: Alignment.centerLeft,
                  color: ColorManager.neutral200,
                  height: AppSize.s36,
                  width: MediaQuery.of(context).size.width,
                  child: Text(AppStrings.notfOther),
                ),
                Column(
                  children: [
                    MainSwitchTile(
                      text: AppStrings.notfOtherProfile,
                      border: false,
                      switchVar: notfOtherProfile ?? true,
                      onChanged: (p0) async {
                        await _shearedPref.setnotfOtherProfile(p0);
                        setState(() {
                          notfOtherProfile = p0;
                        });
                      },
                    ),
                    MainSwitchTile(
                      text: AppStrings.notfOtherAllMessage,
                      border: false,
                      switchVar: notfOtherAllMessage ?? true,
                      onChanged: (p0) async {
                        await _shearedPref.setnotfOtherAllMessage(p0);
                        setState(() {
                          notfOtherAllMessage = p0;
                        });
                      },
                    ),
                    MainSwitchTile(
                      text: AppStrings.notfOtherNudges,
                      border: false,
                      switchVar: notfOtherNudges ?? true,
                      onChanged: (p0) async {
                        await _shearedPref.setnotfOtherNudges(p0);
                        setState(() {
                          notfOtherNudges = p0;
                        });
                      },
                    ),
                  ],
                )
              ],
            )));
  }

}
