import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/presentation/widgets/main_button.dart';
import 'package:jobsque/presentation/widgets/main_titleblock.dart';
import 'package:jobsque/resources/assets_manager.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/routes_manager.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';

class InterestsView extends StatefulWidget {
  const InterestsView({Key? key}) : super(key: key);

  @override
  State<InterestsView> createState() => _InterestsViewState();
}

class _InterestsViewState extends State<InterestsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: AppSize.s20,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: AppPadding.p14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MainTitleBlock(
                  title: AppStrings.interestTitle,
                  subtitle: AppStrings.interestBody),
              Expanded(
                child: GridView.count(
                    crossAxisSpacing: AppSize.s16,
                    mainAxisSpacing: AppSize.s16,
                    crossAxisCount: AppSize.s2.toInt(),
                    childAspectRatio: AppSize.s1_5,
                    children: [
                      InterestList(image: ImageAssets.bezier, text: AppStrings.interestUIUX),
                      InterestList(
                          image: ImageAssets.Ilustrator_Category, text: AppStrings.interestIllustrator),
                      InterestList(
                          image: ImageAssets.Developer_Category, text: AppStrings.interestDeveloper),
                      InterestList(
                          image: ImageAssets.Management_Category, text: AppStrings.interestManagement),
                      InterestList(
                          image: ImageAssets.Information_technology_category,
                          text: AppStrings.interestInformationTechnology),
                      InterestList(
                          image: ImageAssets.Research_and_Analytics_category,
                          text: AppStrings.interestResearchAnalytics),
                    ]),
              ),
              MainButton(text: AppStrings.btnNext, onPress: () {
                Navigator.of(context).pushNamed(Routes.PreferredViewRoute);
              })
            ],
          ),
        ));
  }
}

class InterestList extends StatefulWidget {
  String image;
  String text;
  InterestList({required this.image, required this.text});

  @override
  State<InterestList> createState() => _InterestListState();
}

class _InterestListState extends State<InterestList> {
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
        height: 100,
        padding: EdgeInsets.all(AppSize.s4),
        decoration: BoxDecoration(
            border: isSelected
                ? Border.all(color: ColorManager.primary500, width: AppSize.s1)
                : Border.all(color: ColorManager.neutral300, width: AppSize.s1),
            color:
            isSelected ? ColorManager.primary100 : ColorManager.neutral100,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(widget.image, height: AppSize.s60),
            Text(
              widget.text,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
      ),
    );
  }
}
