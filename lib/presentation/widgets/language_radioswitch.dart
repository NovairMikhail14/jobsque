import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';

class LanguageRadioTile extends StatefulWidget {
  const LanguageRadioTile({Key? key}) : super(key: key);

  @override
  State<LanguageRadioTile> createState() => _LanguageRadioTileState();
}

enum SingingCharacter { lafayette, jefferson }

class Language {
  String countryFlag;
  String text;
  Language({required this.countryFlag, required this.text});
}

List<Language> languageList = [
  Language(countryFlag:
    'ES', text:AppStrings.langEnglish ),
  Language(countryFlag:
    'ID', text:AppStrings.langIndonesia ),
  Language(countryFlag:
    'SA',text:AppStrings.langArabic ),
  Language(countryFlag:
    'CN',text:AppStrings.langChinese ),
  Language(countryFlag:
    'NL',text:AppStrings.langDutch ),
  Language(countryFlag:
    'FR', text:AppStrings.langFrench ),
  Language(countryFlag:
    'DE',text:AppStrings.langGerman ),
  Language(countryFlag:
    'JP',text:AppStrings.langJapanese ),
  Language(countryFlag:
    'KR',text:AppStrings.langKorean ),
  Language(countryFlag:
    'PT', text:AppStrings.langPortuguese ),
];

class _LanguageRadioTileState extends State<LanguageRadioTile> {

  Language selectedlanguage = languageList[0];

  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(languageList.length, (index) {
          return RadioListTile(
            dense: true,
            shape: Border(bottom: BorderSide(color: Colors.grey)),
            title: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CountryFlag.fromCountryCode(languageList[index].countryFlag,
                  height: AppSize.s20,
                  width: AppSize.s30,
                  borderRadius: 4,
                ),
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
                    value ?? Language(countryFlag:
                      'GB',
                       text: "");
              });
            },
          );
        })
    );
  }
}
