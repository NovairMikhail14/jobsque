import 'package:flutter/material.dart';
import 'package:jobsque/presentation/widgets/main_button.dart';
import 'package:jobsque/presentation/widgets/main_listtile.dart';
import 'package:jobsque/presentation/widgets/main_switchtile.dart';
import 'package:jobsque/presentation/widgets/main_textfield.dart';
import 'package:jobsque/presentation/widgets/main_titleblock.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../widgets/job_description.dart';

class HomeScreenFilter extends StatefulWidget {
  const HomeScreenFilter({Key? key}) : super(key: key);

  @override
  State<HomeScreenFilter> createState() => _HomeScreenFilterState();
}

class _HomeScreenFilterState extends State<HomeScreenFilter> {
  TextEditingController td = TextEditingController();
  bool switchVar = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: TextField(
              decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ColorManager.neutral300),
                borderRadius: BorderRadius.circular(600)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ColorManager.primary500),
                borderRadius: BorderRadius.circular(600)),
            contentPadding: const EdgeInsets.fromLTRB(
                AppPadding.p17, AppPadding.p12, AppPadding.p17, AppPadding.p12),
            prefixIcon: Icon(Icons.search),
            hintText: AppStrings.homeScreenSearch,
            hintStyle: Theme.of(context).textTheme.bodyMedium,
          )),
        ),
        body: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: IconButton(
                    onPressed: () {
                      FilterBottomView();
                    },
                    icon: FaIcon(
                      FontAwesomeIcons.sliders,
                    ),
                  ),
                ),
                SizedBox(
                  width: AppSize.s10,
                ),
                JobDescription(
                  isDark: true,
                  color: ColorManager.primary900,
                  descriptionList: ["A", "A"],
                )
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: AppPadding.p8),
              alignment: Alignment.centerLeft,
              color: ColorManager.neutral200,
              height: AppSize.s36,
              width: MediaQuery.of(context).size.width,
              child: Text("Feature +jobs"),
            ),
          ],
        ));
  }

  FilterBottomView() {
    showModalBottomSheet<void>(
      isScrollControlled: true,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(AppSize.s20),
              topRight: Radius.circular(AppSize.s20))),
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(AppPadding.p10),
          height: MediaQuery.of(context).size.height * 0.8,
          decoration: BoxDecoration(
              color: ColorManager.general,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppSize.s20),
                  topRight: Radius.circular(AppSize.s20))),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.arrow_back),
                      Text("Set Filter",
                          style: Theme.of(context).textTheme.titleLarge),
                      Text("Reset",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(color: ColorManager.primary500))
                    ]),
                MainTextField(
                    isTitleBlack: true,
                    hintText: "Job Title",
                    icon: Icons.cases,
                    isTitle: true),
                MainTextField(
                    isTitleBlack: true,
                    hintText: "Location",
                    icon: Icons.cases,
                    isTitle: true),
                MainTextField(
                    isTitleBlack: true,
                    hintText: "Salary",
                    icon: Icons.cases,
                    isTitle: true),
                SizedBox(
                  height: AppSize.s10,
                ),
                GridView.count(
                  crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: AppSize.s85/AppSize.s26,
                    crossAxisCount: 3,
                    shrinkWrap: true,
                    children: [
                      PreferredList(text: "Full Time"),
                      PreferredList(text: "Remote"),
                      PreferredList(text: "Contract"),
                      PreferredList(text: "Part Time"),
                      PreferredList(text: "Onsite"),
                      PreferredList(text: "Internship"),
                    ]),
                SizedBox(
                  height: AppSize.s40,
                ),
                MainButton(text: "Show Result", onPress: () {})
              ],
            ),
          ),
        );
      },
    );
  }
}

class PreferredList extends StatefulWidget {
  String text;

  PreferredList({required this.text});

  @override
  State<PreferredList> createState() => _PreferredListState();
}

class _PreferredListState extends State<PreferredList> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        alignment: Alignment.center,
        height: AppSize.s1,
        // padding: EdgeInsets.all(AppPadding.p12),
        decoration: BoxDecoration(
            border: isSelected
                ? Border.all(color: ColorManager.primary500, width: AppSize.s1)
                : Border.all(color: ColorManager.neutral300, width: AppSize.s1),
            color:
                isSelected ? ColorManager.primary100 : ColorManager.neutral100,
            borderRadius: BorderRadius.circular(AppSize.s100)),
        child: Text(
          widget.text,textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
