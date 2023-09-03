import 'package:flutter/material.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/value_manager.dart';

class InterestBox extends StatefulWidget {
  String text;
  String imagePath;

  InterestBox({super.key, required this.text,required this.imagePath});

  @override
  State<InterestBox> createState() => _InterestBoxState();
}

class _InterestBoxState extends State<InterestBox> {
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
        width: 156,
        height: 125,
        decoration: BoxDecoration(
            border: Border.all(color:ColorManager.colorBoarderChange(selected), width: 2),
            color: ColorManager.colorBodyChange(selected),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(AppSize.s12)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(widget.imagePath, height: AppSize.s48),
            Text(widget.text),
          ],
        ),
      ),
    );
  }
}
