import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:jobsque/resources/routes_manager.dart';

import '../../resources/strings_manager.dart';

class MainBottomNavigationBar extends StatelessWidget {
  int index;

  MainBottomNavigationBar({required this.index});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      onTap: (value) {
        if(value == 0 ){
          Navigator.of(context).pushReplacementNamed(Routes.HomeScreenViewRoute);
        }else if(value == 1) {
          Navigator.of(context).pushReplacementNamed(Routes.HomeScreenViewRoute);
        }else if(value == 2){
          Navigator.of(context).pushReplacementNamed(Routes.AppliedJobViewRoute);
        }if(value == 3 ){
          Navigator.of(context).pushReplacementNamed(Routes.SaveJobViewRoute);
        }if(value == 4 ){
          Navigator.of(context).pushReplacementNamed(Routes.profileRoute);
        }
      },
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
            icon:   Icon(Icons.pentagon_rounded), label: AppStrings.bottomBarHome),
        BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.message),
            label: AppStrings.bottomBarMessages),
        BottomNavigationBarItem(
            icon:   FaIcon(FontAwesomeIcons.briefcase),
            label: AppStrings.applied),
        BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border_outlined), label: AppStrings.saved),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_outline), label: AppStrings.profile),
      ],
    );
  }
}
