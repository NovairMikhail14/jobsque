import 'package:flutter/material.dart';
import 'package:jobsque/presentation/widgets/main_button.dart';
import 'package:jobsque/presentation/widgets/main_titleblock.dart';
import 'package:jobsque/presentation/widgets/toggleswitch.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/routes_manager.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';


class PreferredView extends StatefulWidget {
  const PreferredView({Key? key}) : super(key: key);

  @override
  State<PreferredView> createState() => _PreferredViewState();
}

class _PreferredViewState extends State<PreferredView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: AppSize.s20,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MainTitleBlock(
              title: AppStrings.preferredTitle,
              subtitle: AppStrings.preferredBody),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MainToggleSwitch(list: ["Work From Office", "Remote Work"],index: 0,onToggle: (p0) {

              },),
            ],
          ),
          Text(
            AppStrings.preferredSelectCountry,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Expanded(
              child: Padding(
                padding: EdgeInsets.all(AppSize.s8),
                child: Wrap(spacing: AppSize.s8, runSpacing: AppSize.s8, children: [
                  PreferredList(image: "", text: AppStrings.countryUSA),
                  PreferredList(image: "", text: AppStrings.countryMalaysia),
                  PreferredList(image: "", text: AppStrings.countrySingapore),
                  PreferredList(image: "", text: AppStrings.countryIndonesia),
                  PreferredList(image: "", text: AppStrings.countryPhilippines),
                  PreferredList(image: "", text: AppStrings.countryPoland),
                  PreferredList(image: "", text: AppStrings.countryIndia),
                  PreferredList(image: "", text: AppStrings.countryVietnam),
                  PreferredList(image: "", text: AppStrings.countryChina),
                  PreferredList(image: "", text: AppStrings.countryCanada),
                  PreferredList(image: "", text: AppStrings.countryUAE),
                  PreferredList(image: "", text: AppStrings.countryArgentina),
                  PreferredList(image: "", text: AppStrings.countryBrazil),
                ]),
              )),
          MainButton(text: AppStrings.btnNext, onPress: () {
            Navigator.of(context).pushNamed(Routes.AccountSetupViewRoute);
          })
        ],
      ),
    );
  }
}

class PreferredList extends StatefulWidget {
  String image;
  String text;
  PreferredList({required this.image, required this.text});

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
        height: AppSize.s42,
        padding: EdgeInsets.all(AppPadding.p8),
        decoration: BoxDecoration(
            border: isSelected
                ? Border.all(color: ColorManager.primary500, width: AppSize.s1)
                : Border.all(color: ColorManager.neutral300, width: AppSize.s1),
            color:
            isSelected ? ColorManager.primary100 : ColorManager.neutral100,
            borderRadius: BorderRadius.circular(AppSize.s100)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
                backgroundImage: AssetImage(widget.image),
                maxRadius: AppSize.s13),
            SizedBox(
              width: AppSize.s8,
            ),
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
