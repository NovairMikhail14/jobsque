import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/value_manager.dart';

class MainSwitchTile extends StatefulWidget {
  String text;
  bool border;

  MainSwitchTile({required this.text, required this.border, Key? key})
      : super(key: key);

  @override
  State<MainSwitchTile> createState() => _MainSwitchTileState();
}

class _MainSwitchTileState extends State<MainSwitchTile> {
  bool switchVar = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.border
          ? EdgeInsets.fromLTRB(
              AppPadding.p12, AppPadding.p14, AppPadding.p12, AppPadding.p14)
          : null,
      height: widget.border ? AppSize.s66 : AppSize.s52,
      decoration: BoxDecoration(
          border: widget.border
              ? Border.all(color: ColorManager.neutral300, width: AppSize.s1)
              : Border(
                  bottom: BorderSide(
                      color: ColorManager.neutral300, width: AppSize.s1)),
          borderRadius:
              widget.border ? BorderRadius.circular(AppSize.s8) : null),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: AppSize.s200,
            child: Text(widget.text,
                style: widget.border
                    ? Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: ColorManager.neutral500)
                    : Theme.of(context).textTheme.titleMedium,
                maxLines: 2),
          ),
          Spacer(
            flex: 1,
          ),
          CupertinoSwitch(
            activeColor: ColorManager.primary500,
            value: switchVar,
            onChanged: (bool? value) {
              setState(() {
                switchVar = value!;
              });
            },
          )
        ],
      ),
    );
  }
}
