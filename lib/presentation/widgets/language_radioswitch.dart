import 'package:flutter/material.dart';
import 'package:jobsque/resources/strings_manager.dart';

class LanguageRadioTile extends StatefulWidget {
  const LanguageRadioTile({Key? key}) : super(key: key);

  @override
  State<LanguageRadioTile> createState() => _LanguageRadioTileState();
}

enum SingingCharacter { lafayette, jefferson }

class Language {
  IconData imagePath;
  String text;
  Language({required this.imagePath, required this.text});
}

List languageList = [
  Language(imagePath: Icons.abc, text:AppStrings.langEnglish ),
  Language(imagePath: Icons.abc, text:AppStrings.langIndonesia ),
  Language(imagePath: Icons.abc, text:AppStrings.langArabic ),
  Language(imagePath: Icons.abc, text:AppStrings.langChinese ),
  Language(imagePath: Icons.abc, text:AppStrings.langDutch ),
  Language(imagePath: Icons.abc, text:AppStrings.langFrench ),
  Language(imagePath: Icons.abc, text:AppStrings.langGerman ),
  Language(imagePath: Icons.abc, text:AppStrings.langJapanese ),
  Language(imagePath: Icons.abc, text:AppStrings.langKorean ),
  Language(imagePath: Icons.abc, text:AppStrings.langPortuguese ),
];

class _LanguageRadioTileState extends State<LanguageRadioTile> {

  List iconsList = [Icons.abc, Icons.access_time_rounded];
  Language selectedlanguage = languageList[0];

  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(languageList.length, (index) {
          return RadioListTile<Language>(
            dense: true,
            shape: Border(bottom: BorderSide(color: Colors.grey)),
            title: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(languageList[index].imagePath),
                SizedBox(width: 4),
                Text(languageList[index].text,style: Theme.of(context).textTheme.titleMedium,)
              ],
            ),
            controlAffinity: ListTileControlAffinity.trailing,
            value: languageList[index],
            groupValue: selectedlanguage,
            onChanged: (Language? value) {
              setState(() {
                selectedlanguage =
                    value ?? Language(imagePath: Icons.abc, text: "");
              });
            },
          );
        })
    );
  }
}
