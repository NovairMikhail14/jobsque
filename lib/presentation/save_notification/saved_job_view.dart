import 'package:flutter/material.dart';
import 'package:jobsque/presentation/widgets/language_radioswitch.dart';
import 'package:jobsque/presentation/widgets/main_switchtile.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';

import '../widgets/job_tile.dart';
import '../widgets/main bottom_navigation.dart';

class SaveJobView extends StatefulWidget {
  const SaveJobView({Key? key}) : super(key: key);

  @override
  State<SaveJobView> createState() => _SaveJobViewState();
}

class _SaveJobViewState extends State<SaveJobView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MainBottomNavigationBar(index: 3),
        appBar: AppBar(
          backgroundColor: ColorManager.general,
          title: const Text("Saved"),
        ),
        body: Container(
            child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: AppPadding.p8),
              alignment: Alignment.center,
              color: ColorManager.neutral200,
              height: AppSize.s36,
              width: MediaQuery.of(context).size.width,
              child: Text("## Job Saved"),
            ),
            Column(
              children: [
                JobTile(
                  imagePath: "",
                  subtitle: "A",
                  title: "A",
                )
              ],
            ),
          ],
        )));
  }
}
