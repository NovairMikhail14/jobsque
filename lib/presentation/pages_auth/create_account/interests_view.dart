import 'package:flutter/material.dart';
import 'package:jobsque/presentation/widgets/main_button.dart';
import 'package:jobsque/presentation/widgets/main_titleblock.dart';
import 'package:jobsque/resources/color_manger.dart';
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
                    childAspectRatio: AppSize.s1_2,
                    children: [
                      InterestList(image: "", text: AppStrings.interestUIUX),
                      InterestList(
                          image: "", text: AppStrings.interestIllustrator),
                      InterestList(
                          image: "", text: AppStrings.interestDeveloper),
                      InterestList(
                          image: "", text: AppStrings.interestManagement),
                      InterestList(
                          image: "",
                          text: AppStrings.interestInformationTechnology),
                      InterestList(
                          image: "",
                          text: AppStrings.interestResearchAnalytics),
                    ]),
              ),
              MainButton(text: AppStrings.btnNext, onPress: () {})
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
            Image.asset(widget.image, height: AppSize.s48),
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
