import 'package:flutter/material.dart';
import 'package:jobsque/presentation/widgets/main_listtile.dart';
import 'package:jobsque/presentation/widgets/main_button.dart';
import 'package:jobsque/presentation/widgets/main_textfield.dart';
import 'package:jobsque/presentation/widgets/main_titleblock.dart';
import 'package:jobsque/resources/assets_manager.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/font_manager.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';
import 'package:toggle_switch/toggle_switch.dart';

class EditProfileView extends StatefulWidget {
  const EditProfileView({Key? key}) : super(key: key);

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
  TextEditingController td = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: ColorManager.general,
          title: Text(AppStrings.profile),
          ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: AppPadding.p14),
          child: Expanded(
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      height: 100,
                      color: ColorManager.general,
                    ),
                    Container(
                      height: 45,
                      color: ColorManager.general,
                    ),
                    CircleAvatar(
                      backgroundColor: ColorManager.primary500,
                      backgroundImage: AssetImage(""),
                      radius: AppSize.s45,
                    )
                  ],
                ),
                Text(AppStrings.profilePhoto,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .apply(color: ColorManager.primary500)),
                MainTextField(hintText: AppStrings.profileName,controller: td,isTitle: true),
                MainTextField(hintText: AppStrings.profileBio,controller: td,isTitle: true),
                MainTextField(hintText: AppStrings.profileAddress,controller: td,isTitle: true),
                MainTextField(hintText: AppStrings.profileHandPhoneNo,controller: td,isTitle: true),

                // Spacer(
                //   flex: 1,
                // ),
                MainButton(text: AppStrings.btnSave, onPress: (){}),

        ]
    ),
          ),
    ),
      )
    );
  }
}
