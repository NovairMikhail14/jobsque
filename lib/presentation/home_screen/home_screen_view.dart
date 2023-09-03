import 'package:flutter/material.dart';
import 'package:jobsque/presentation/widgets/main_listtile.dart';
import 'package:jobsque/presentation/widgets/main_switchtile.dart';
import 'package:jobsque/presentation/widgets/main_textfield.dart';
import 'package:jobsque/presentation/widgets/main_titleblock.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';
import 'package:flutter/cupertino.dart';

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({Key? key}) : super(key: key);

  @override
  State<HomeScreenView> createState() =>
      _HomeScreenViewState();
}

class _HomeScreenViewState
    extends State<HomeScreenView> {
  TextEditingController td = TextEditingController();
  bool switchVar = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: AppSize.s12,
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p14),
          child: Column(
            children: [
              MainTitleBlock(title: "Name", subtitle: "Create a better future for yourself here",),
              Container(
                decoration: BoxDecoration(
                ),
                child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: ColorManager.neutral300),borderRadius:  BorderRadius.circular(600)) ,
                      focusedBorder:OutlineInputBorder(borderSide: BorderSide(color: ColorManager.primary500),borderRadius:  BorderRadius.circular(600)) ,
                      contentPadding: const EdgeInsets.fromLTRB(AppPadding.p17, AppPadding.p12, AppPadding.p17, AppPadding.p12),
                      prefixIcon:Icon(Icons.search),
                      hintText: AppStrings.homeScreenSearch,
                      hintStyle: Theme.of(context).textTheme.bodyMedium,)),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    AppStrings.jobSuggested,
                    style: Theme.of(context).textTheme.titleMedium!.apply(
                      color: ColorManager.neutral800,
                    ),
                  ),
                  Spacer(flex: AppSize.s1.toInt()),
                  TextButton(
                    child: Text(AppStrings.viewAll,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .apply(color: ColorManager.primary500)),
                    onPressed: () {},
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    AppStrings.jobRecent,
                    style: Theme.of(context).textTheme.titleMedium!.apply(
                      color: ColorManager.neutral800,
                    ),
                  ),
                  Spacer(flex: AppSize.s1.toInt()),
                  TextButton(
                    child: Text(AppStrings.viewAll,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .apply(color: ColorManager.primary500)),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
