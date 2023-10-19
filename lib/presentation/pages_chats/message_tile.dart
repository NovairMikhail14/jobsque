import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/app/di.dart';
import 'package:jobsque/presentation/widgets/job_description.dart';
import 'package:jobsque/presentation/widgets/job_steps.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';

import '../../data/network/dio_factory.dart';


class MessageTile extends StatefulWidget {
  String title;
  String subtitle;
  String imagePath;
  bool isDark;

  MessageTile(
      {required this.title,
      this.isDark = false,
      required this.subtitle,
      required this.imagePath});

  @override
  State<MessageTile> createState() => _MessageTileState();
}

class _MessageTileState extends State<MessageTile> {
  bool Selected = false;
// checkImage() async{
//    Dio dio = Dio() ;
//   final response = await dio.head(Uri.parse(widget.imagePath).toString());
//  if(response.statusCode == 200 ){
//    return widget.imagePath;
//  }
//  else {
//    print("*----${response.statusCode}");
//    return null;
//  }
// }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: MediaQuery.of(context).size.width * 0.80,
      child: ListTile(
          title: Text(
            widget.title,
            style: widget.isDark
                ? Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: ColorManager.general,
                    )
                : null,
          ),
          subtitle: Text(
            widget.subtitle,
            style:
                widget.isDark ? Theme.of(context).textTheme.bodyMedium : null,
          ),
          leading: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: AppSize.s50,
                height: AppSize.s50,
                decoration: BoxDecoration(
                    color: ColorManager.general,
                    borderRadius:
                        BorderRadius.all(Radius.circular(AppSize.s10))),
              ),
              CircleAvatar(
                  radius: AppSize.s20,
                  child:Image.network(
                    widget.imagePath,
                    fit: BoxFit.contain,
                    alignment: Alignment.center,
                    width: AppSize.s40,
                    height: AppSize.s40,
                  )),
            ],
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                backgroundColor: Color(0xffDBB40E),
                radius: AppSize.s4,
              ),
              Text(
                "10.00AM",
                style: widget.isDark
                    ? Theme.of(context).textTheme.bodyMedium
                    : null,
              )
            ],
          )),
    );
  }
}
