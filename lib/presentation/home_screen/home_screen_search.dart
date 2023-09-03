import 'package:flutter/material.dart';
import 'package:jobsque/presentation/widgets/main_listtile.dart';
import 'package:jobsque/presentation/widgets/main_switchtile.dart';
import 'package:jobsque/presentation/widgets/main_textfield.dart';
import 'package:jobsque/presentation/widgets/main_titleblock.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';
import 'package:flutter/cupertino.dart';

class HomeScreenSearch extends StatefulWidget {
  const HomeScreenSearch({Key? key}) : super(key: key);

  @override
  State<HomeScreenSearch> createState() =>
      _HomeScreenSearchState();
}

class _HomeScreenSearchState
    extends State<HomeScreenSearch> {
  TextEditingController td = TextEditingController();
  bool switchVar = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: AppSize.s12,
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.p14),
              child: Column(
                children: [
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
                  SizedBox(height: AppSize.s12,),

                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: AppPadding.p8),
              alignment: Alignment.centerLeft,
              color: ColorManager.neutral200,
              height:AppSize.s36 ,
              width: MediaQuery.of(context).size.width,
              child: Text(AppStrings.searchesRecent),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: AppPadding.p8),
              alignment: Alignment.centerLeft,
              color: ColorManager.neutral200,
              height:AppSize.s36 ,
              width: MediaQuery.of(context).size.width,
              child: Text(AppStrings.searchesPopular),
            ),
          ],
        ));
  }
}
