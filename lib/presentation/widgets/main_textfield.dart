import 'package:flutter/material.dart';
import 'package:jobsque/resources/value_manager.dart';

class MainTextField extends StatelessWidget {
  String hintText;
  bool isTitle;
  bool isTitleBlack;
  IconData icon;
  bool iconAppear;
  TextEditingController? controller;
  Function(String)? onChanged;
  bool obscureText;

  MainTextField(
      {this.icon = Icons.add,
      this.isTitleBlack = false,
      this.isTitle = false,
      this.onChanged,
        this.obscureText = false,
      this.iconAppear = false,
      required this.hintText, this.controller,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: AppMargin.m10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            isTitle ? hintText : "",
            style: isTitleBlack
                ? Theme.of(context).textTheme.titleMedium
                : Theme.of(context).textTheme.bodyMedium,
          ),
          TextFormField(
            obscureText: obscureText,
              controller: controller,
              onChanged: onChanged,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'field is required';
                }
              },
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.fromLTRB(AppPadding.p17,
                      AppPadding.p12, AppPadding.p17, AppPadding.p12),
                  prefixIcon: iconAppear ? Icon(icon) : null,
                  hintText: hintText,
                  hintStyle: Theme.of(context).textTheme.bodyMedium,
                  border: const OutlineInputBorder())),
        ],
      ),
    );
  }
}
