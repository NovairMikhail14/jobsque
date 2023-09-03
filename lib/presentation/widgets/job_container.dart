import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/presentation/widgets/job_description.dart';
import 'package:jobsque/presentation/widgets/job_steps.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';

class JobTile extends StatefulWidget {
  String title;
  String subtitle;
  String imagePath;

  JobTile(
      {required this.title, required this.subtitle, required this.imagePath});

  @override
  State<JobTile> createState() => _JobTileState();
}

class _JobTileState extends State<JobTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom:  AppSize.s12),
      padding: const EdgeInsets.all(AppSize.s12),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 2,
            color: ColorManager.neutral200
          )
        )
      ),
      child: Column(
        children: [
          ListTile(
            title: Text(widget.title),
            subtitle: Text(widget.subtitle),
            leading: SvgPicture.asset(widget.imagePath),
            trailing: Icon(Icons.archive_outlined),
          ),
          JobDescription(descriptionList: ["Remote","FullTime"],),
          SizedBox(height: AppSize.s10,),
          JobSteps()
        ],
      ),
    );
  }
}
