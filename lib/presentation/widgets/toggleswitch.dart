import 'package:flutter/material.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/value_manager.dart';
import 'package:toggle_switch/toggle_switch.dart';

class MainToggleSwitch extends StatefulWidget {
  List<String> list;
  Function(int?)? onToggle;
  int index;
  MainToggleSwitch({required this.index, required this.onToggle, required this.list, Key? key}) : super(key: key);

  @override
  State<MainToggleSwitch> createState() => _MainToggleSwitchState();
}

class _MainToggleSwitchState extends State<MainToggleSwitch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: AppMargin.m10 ,top:AppMargin.m10 ),
      child: ToggleSwitch(
        centerText: true,
        radiusStyle: true,
        minWidth: MediaQuery.of(context).size.width,
        cornerRadius: AppSize.s20,
        initialLabelIndex:widget.index,
        activeBgColor:[ColorManager.primary900],
        activeFgColor: ColorManager.general,
        inactiveBgColor: ColorManager.neutral100,
        inactiveFgColor: ColorManager.neutral500,
        totalSwitches: widget.list.length,
        labels: widget.list,
        onToggle: widget.onToggle,
      ),
    );
  }
}
