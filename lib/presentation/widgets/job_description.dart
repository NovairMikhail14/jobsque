import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/presentation/widgets/job_steps.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';

class JobDescription extends StatefulWidget {
  List descriptionList;
  String salary;
  String period;
  bool isCenter;

  JobDescription(
      {required this.descriptionList,this.isCenter = false, this.salary = "", this.period = ""});

  @override
  State<JobDescription> createState() => _JobDescriptionState();
}

class _JobDescriptionState extends State<JobDescription> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(widget.descriptionList.length, (index) {
                return Container(
                    padding: EdgeInsets.fromLTRB(AppPadding.p12, AppPadding.p10,
                        AppPadding.p12, AppPadding.p10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppSize.s20),
                        color: ColorManager.primary100),
                    child: Text(
                      widget.descriptionList[index],
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: ColorManager.primary500),
                    ),
                    margin:widget.isCenter? EdgeInsets.only(right: AppMargin.m4,bottom: AppMargin.m10):EdgeInsets.only(right: AppMargin.m10,bottom: AppMargin.m10));
              })
              ),
          isCenter(),
          Text(widget.period != "" ? "Posted ${widget.period} days ago" : ""),
          Text(widget.salary != "" ? "${widget.salary}/Month" : ""),
        ],
      ),
    );
  }

  Widget isCenter() {
    if(widget.isCenter){
      return SizedBox();
    }
    else{
      return Spacer(
        flex: 1,
      );
    }
  }

  // isCenter(){
  //   widget.isCenter? Spacer():Spacer(flex: 1,);
  // }
}
