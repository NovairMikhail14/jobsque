import 'package:flutter/material.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/value_manager.dart';

class MainListTile extends StatefulWidget {
  String title;
  String trailingText;
  IconData iconData;
  bool leadingIcon;
  Function onTap;


  MainListTile(
      {required this.title, this.trailingText="",required this.onTap,this.leadingIcon = false, this.iconData = Icons.abc});

  @override
  State<MainListTile> createState() => _MainListTileState();
}

class _MainListTileState extends State<MainListTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        children: [
          ListTile(
            onTap: () {
              widget.onTap();
            },
            title: Text(widget.title ),
            leading: widget.leadingIcon?  CircleAvatar(
              radius: AppSize.s20,
              backgroundColor: ColorManager.primary100,
              child: Icon(widget.iconData),
            ) :null,
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(widget.trailingText),
                Icon(Icons.arrow_forward,color: ColorManager.neutral900,)
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 1,
            color: ColorManager.neutral200,
          )
        ],
      ),
    );
  }
}
