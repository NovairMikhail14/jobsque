import 'package:flutter/material.dart';
import 'package:jobsque/resources/value_manager.dart';

class MainTextField extends StatefulWidget {
  String hintText;
  bool isTitle;
  bool isTitleBlack;
  IconData icon;
  bool iconAppear;
  TextEditingController controller;

  MainTextField({ this.icon =Icons.add,this.isTitleBlack = false,this.isTitle = false,this.iconAppear = false,required this.hintText,required this.controller, super.key});

  @override
  State<MainTextField> createState() => _MainTextFieldState();
}

class _MainTextFieldState extends State<MainTextField> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(top: AppMargin.m10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                widget.isTitle? widget.hintText:"",style: widget.isTitleBlack? Theme.of(context).textTheme.titleMedium: Theme.of(context).textTheme.bodyMedium,
            ),
            TextField(
              controller:widget.controller,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.fromLTRB(AppPadding.p17, AppPadding.p12, AppPadding.p17, AppPadding.p12),
                     prefixIcon:widget.iconAppear? Icon(widget.icon):null,
                    hintText: widget.hintText,
                    hintStyle: Theme.of(context).textTheme.bodyMedium,
                    border: const OutlineInputBorder())),
          ],
        ),
      ),
    );
  }
}
