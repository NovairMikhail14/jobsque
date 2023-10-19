import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';

class PhoneNumberTextField extends StatelessWidget {
  Function(PhoneNumber)? onInputChanged;
   String? initialValue;

  PhoneNumberTextField({this.onInputChanged,this.initialValue});

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  getPhoneNumber(){
    PhoneNumber number = PhoneNumber(phoneNumber: initialValue,isoCode: 'EG');
return number;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Container(
        margin: EdgeInsets.only(top: AppMargin.m12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.profileHandPhoneNo,
              style:Theme.of(context).textTheme.titleMedium
            ),
            Container(
              padding: EdgeInsets.all(AppPadding.p4),
              margin: EdgeInsets.only(top: AppMargin.m4),
              decoration: BoxDecoration(
                border: Border.all(color: ColorManager.neutral300,width: AppSize.s1_2),
                borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  InternationalPhoneNumberInput(
                    inputBorder: InputBorder.none,
                    inputDecoration: InputDecoration(
                      hintText: AppStrings.profileHandPhoneNo,
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: ColorManager.general)),
                    ),
                    spaceBetweenSelectorAndTextField: AppSize.s0,
                    onInputChanged:onInputChanged,
                    onInputValidated: (bool value) {
                      print(value);
                    },
                    selectorConfig: SelectorConfig(
                      selectorType: PhoneInputSelectorType.DROPDOWN,
                    ),
                    ignoreBlank: false,
                    autoValidateMode: AutovalidateMode.disabled,
                    selectorTextStyle: TextStyle(color: Colors.black),
                    initialValue: getPhoneNumber(),
                    formatInput: true,
                    keyboardType:
                    TextInputType.numberWithOptions(signed: true, decimal: true),
                    onSaved: (PhoneNumber number) {
                      print('On Saved: $number');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}