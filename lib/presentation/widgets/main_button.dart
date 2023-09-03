import 'package:flutter/material.dart';
import 'package:jobsque/resources/value_manager.dart';

class MainButton extends StatefulWidget {
  String text;
  Function onPress;
  MainButton({required this.text, required this.onPress, Key? key})
      : super(key: key);

  @override
  State<MainButton> createState() => _MainButtonState();
}

class _MainButtonState extends State<MainButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: AppMargin.m8),
      child: ElevatedButton(
        onPressed: () => widget.onPress,
        style: ElevatedButton.styleFrom(
          fixedSize: Size(MediaQuery.of(context).size.width, 48),
          shape: const StadiumBorder(),
        ),
        child: Text(widget.text),
      ),
    );
  }
}
