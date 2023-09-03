import 'package:flutter/material.dart';
import 'package:jobsque/presentation/widgets/main_listtile.dart';
import 'package:jobsque/presentation/widgets/main_titleblock.dart';
import 'package:jobsque/resources/assets_manager.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/font_manager.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';
import 'package:toggle_switch/toggle_switch.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: ColorManager.primary100,
          title: Text(AppStrings.profile),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.logout_outlined,
                  color: ColorManager.danger500,
                ))
          ]),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: 145,
                    color: ColorManager.primary100,
                  ),
                  Container(
                    height: 45,
                    color: ColorManager.general,
                  ),
                  CircleAvatar(
                    backgroundColor: ColorManager.general,
                    backgroundImage: AssetImage(""),
                    radius: AppSize.s45,
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: AppPadding.p14),
                child: Column(
                  children: [
                    MainTitleBlock(
                      title: "#Name",
                      subtitle: "#Postion",
                      alignment: CrossAxisAlignment.center,
                    ),
                    ToggleButtons(
                        fillColor: ColorManager.neutral900,
                        color: ColorManager.neutral900,
                        disabledColor: ColorManager.neutral900,
                        focusColor: ColorManager.neutral900,
                        highlightColor: ColorManager.neutral900,
                        selectedColor: ColorManager.neutral900,
                        constraints: BoxConstraints(
                            minWidth: AppSize.s91,
                            minHeight: AppSize.s52
                        ),
                        borderRadius: BorderRadius.circular(AppSize.s8),
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(AppStrings.applied,
                                  style: Theme.of(context).textTheme.bodyMedium),
                              Text(
                                "#No.",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(fontSize: FontSize.s20),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(AppStrings.applied,
                                  style: Theme.of(context).textTheme.bodyMedium),
                              Text(
                                "#No.",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(fontSize: FontSize.s20),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(AppStrings.applied,
                                  style: Theme.of(context).textTheme.bodyMedium),
                              Text(
                                "#No.",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(fontSize: FontSize.s20),
                              ),
                            ],
                          ),
                        ],
                        isSelected: [
                          false,
                          false,
                          false
                        ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          AppStrings.about,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        TextButton(
                          child: Text(AppStrings.edit,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .apply(color: ColorManager.primary500)),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Text("#User About")
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: AppPadding.p8),
                alignment: Alignment.centerLeft,
                color: ColorManager.neutral200,
                height:AppSize.s36 ,
                width: MediaQuery.of(context).size.width,
                child: Text(AppStrings.general),
              ),
              Column(
                children: [
                  MainListTile(title: AppStrings.editProfile,iconData: Icons.person_outline,leadingIcon: true),
                  MainListTile(title: AppStrings.prtfoTitle,iconData: Icons.folder_special_outlined,leadingIcon: true),
                  MainListTile(title: AppStrings.language,iconData: Icons.language,leadingIcon: true),
                  MainListTile(title: AppStrings.notification,iconData: Icons.notifications_none_outlined,leadingIcon: true),
                  MainListTile(title: AppStrings.loginSecurity,iconData: Icons.lock_outline_rounded,leadingIcon: true),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: AppPadding.p8),
                alignment: Alignment.centerLeft,
                color: ColorManager.neutral200,
                height:AppSize.s36 ,
                width: MediaQuery.of(context).size.width,
                child: Text(AppStrings.others),
              ),
              Column(
                children: [
                  MainListTile(title: AppStrings.accessibility,leadingIcon: false),
                  MainListTile(title: AppStrings.helpCenter,leadingIcon: false),
                  MainListTile(title: AppStrings.termsConditions,leadingIcon: false),
                  MainListTile(title: AppStrings.privacyPolicy,leadingIcon: false),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: AppStrings.bottomBarHome),
          BottomNavigationBarItem(icon: Icon(Icons.message_outlined),label: AppStrings.bottomBarMessages),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined),label: AppStrings.applied),
          BottomNavigationBarItem(icon: Icon(Icons.archive_outlined),label: AppStrings.facebook),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline),label: AppStrings.profile),
        ],
      ),
    );
  }
}
