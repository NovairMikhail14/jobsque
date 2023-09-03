import 'package:flutter/material.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';

class MainRadioTile extends StatefulWidget {
  const MainRadioTile({Key? key}) : super(key: key);

  @override
  State<MainRadioTile> createState() => _MainRadioTileState();
}

enum SingingCharacter { lafayette, jefferson }

class TypeWork {
  String title;
  String subtitle;
  TypeWork({required this.title, required this.subtitle});
}

List typeWorkList = [
  TypeWork(title: "",subtitle: ""),
];

class _MainRadioTileState extends State<MainRadioTile> {

  TypeWork selectedTypeWorkList = typeWorkList[0];

  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(typeWorkList.length, (index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: AppMargin.m4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSize.s8),
              border: Border.all(color: ColorManager.neutral500,width: AppSize.s2),
            ),
            child: RadioListTile<TypeWork>(
              dense: true,
              subtitle: Text(typeWorkList[index].subtitle,style: Theme.of(context).textTheme.titleMedium,),
              title: Text(typeWorkList[index].title,style: Theme.of(context).textTheme.titleMedium,),
              controlAffinity: ListTileControlAffinity.trailing,
              value: typeWorkList[index],
              groupValue: selectedTypeWorkList,
              onChanged: (TypeWork? value) {
                setState(() {
                  selectedTypeWorkList =
                      value ?? TypeWork(title: "", subtitle: "");
                });
              },
            ),
          );
        })
    );
  }
}
