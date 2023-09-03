import 'package:flutter/material.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/value_manager.dart';

class LocationBox extends StatefulWidget {
  String text;
  String imagePath;

  LocationBox({super.key, required this.text, required this.imagePath});

  @override
  State<LocationBox> createState() => _LocationBoxState();
}

class _LocationBoxState extends State<LocationBox> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Container(
        padding: EdgeInsets.fromLTRB(AppPadding.p8,AppPadding.p14,AppPadding.p8,AppPadding.p10),
        decoration: BoxDecoration(
            border: Border.all(
                color: ColorManager.colorBoarderChange(selected), width: 2),
            color: ColorManager.colorBodyChange(selected),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(AppSize.s100)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: AppSize.s13,
                backgroundImage: AssetImage(widget.imagePath)),
            SizedBox(width: AppSize.s8,),
            Text(widget.text),
          ],
        ),
      ),
    );
  }
}
