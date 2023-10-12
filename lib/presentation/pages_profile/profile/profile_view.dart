import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:jobsque/presentation/pages_profile/cubit/getAllPortofolios_cubit/get_all_portofolios_cubit.dart';
import 'package:jobsque/presentation/widgets/custom_loading_indecator.dart';
import 'package:jobsque/presentation/widgets/main_listtile.dart';
import 'package:jobsque/presentation/widgets/main_titleblock.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/font_manager.dart';
import 'package:jobsque/resources/routes_manager.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';

import '../../widgets/main bottom_navigation.dart';
import '../general/editprofile/editprofile_view.dart';
import '../general/language/language_view.dart';
import '../general/loginsecurity/loginsecurity_view.dart';
import '../general/notification/notification_view.dart';
import '../general/portfolio/portfolio_view.dart';
import '../other/help_center_view.dart';
import '../other/privacy_policy_view.dart';
import '../other/terms_condition_view.dart';

class ProfileViewData{
  String? name;
  String? bio;
  String? address;
  String? phone;
  ProfileViewData(this.name, this.bio, this.address ,this.phone,);
}
class ProfileView extends StatelessWidget {
   ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<GetAllPortofoliosCubit>(context).getPortofoliosData();
    return BlocConsumer<GetAllPortofoliosCubit, GetAllPortofoliosState>(
  listener: (context, state) {
    if(state is GetAllPortofoliosFailed){
    }
  },
  builder: (context, state) {
    print("-------asdasd$state");
    if(state is GetAllPortofoliosSuccess){
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
                        title: state.profileData?.name??"",
                        subtitle:state.profileData?.bio??"" ,
                        textAlign: TextAlign.center,
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
                              minWidth: AppSize.s91, minHeight: AppSize.s52),
                          borderRadius: BorderRadius.circular(AppSize.s8),
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(AppStrings.applied,
                                    style:
                                    Theme.of(context).textTheme.bodyMedium),
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
                                Text(AppStrings.reviewed,
                                    style:
                                    Theme.of(context).textTheme.bodyMedium),
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
                                Text(AppStrings.contacted,
                                    style:
                                    Theme.of(context).textTheme.bodyMedium),
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
                  height: AppSize.s36,
                  width: MediaQuery.of(context).size.width,
                  child: Text(AppStrings.general),
                ),
                Column(
                  children: [
                    MainListTile(
                        onTap: () {
                          Navigator.of(context).pushNamed(Routes.editProfileRoute,arguments: ProfileViewData(state.profileData?.name,state.profileData?.bio,state.profileData?.address,state.profileData?.mobile));
                        },
                        title: AppStrings.editProfile,
                        iconData: Icons.person_outline,
                        leadingIcon: true),
                    MainListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PortfolioView(),
                              ));
                        },
                        title: AppStrings.prtfoTitle,
                        iconData: Icons.folder_special_outlined,
                        leadingIcon: true),
                    MainListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LanguageView(),
                              ));
                        },
                        title: AppStrings.language,
                        iconData: Icons.language,
                        leadingIcon: true),
                    MainListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => NotificationView(),
                              ));
                        },
                        title: AppStrings.notification,
                        iconData: Icons.notifications_none_outlined,
                        leadingIcon: true),
                    MainListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginSecurityView(),
                              ));
                        },
                        title: AppStrings.loginSecurity,
                        iconData: Icons.lock_outline_rounded,
                        leadingIcon: true),
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: AppPadding.p8),
                  alignment: Alignment.centerLeft,
                  color: ColorManager.neutral200,
                  height: AppSize.s36,
                  width: MediaQuery.of(context).size.width,
                  child: Text(AppStrings.others),
                ),
                Column(
                  children: [
                    MainListTile(
                        onTap: () {},
                        title: AppStrings.accessibility,
                        leadingIcon: false),
                    MainListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HelpCenterView(),
                              ));
                        },
                        title: AppStrings.helpCenter,
                        leadingIcon: false),
                    MainListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TermsConditionsView(),
                              ));
                        },
                        title: AppStrings.termsConditions,
                        leadingIcon: false),
                    MainListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PrivacyPolicyView(),
                              ));
                        },
                        title: AppStrings.privacyPolicy,
                        leadingIcon: false),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: MainBottomNavigationBar(index: 4)
      );
    } else{
      return CustomLoadingIndicator();
    }
  },
);
  }
}
