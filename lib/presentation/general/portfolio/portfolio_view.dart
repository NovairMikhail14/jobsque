
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:jobsque/presentation/widgets/add_pdf.dart';
import 'package:jobsque/presentation/widgets/language_radioswitch.dart';
import 'package:jobsque/presentation/widgets/main_titleblock.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';

class PortfolioView extends StatefulWidget {
  const PortfolioView({Key? key}) : super(key: key);

  @override
  State<PortfolioView> createState() => _PortfolioViewState();
}

class _PortfolioViewState extends State<PortfolioView> {
  TextEditingController td = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorManager.general,
          title: const Text(AppStrings.language),
        ),
        body: Container(
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p14),
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                MainTitleBlock(title: AppStrings.prtfoTitle, subtitle: ""),
                AddPDF(),
              ],
            )
        )
    );
  }
}
