import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobsque/presentation/widgets/job_description.dart';
import 'package:jobsque/presentation/widgets/job_steps.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';

class JobTile extends StatefulWidget {
  String title;
  String subtitle;
  String imagePath;
  bool isDark;
  FaIcon? icon;
  Function()? onPressed;
  bool isSelected;
  JobTile(
      {required this.title,
      this.isDark = false,
        this.icon ,
        this.onPressed,
        this.isSelected = false,
      required this.subtitle,
      required this.imagePath});

  @override
  State<JobTile> createState() => _JobTileState();
}

class _JobTileState extends State<JobTile> {

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
          style: widget.isDark ? Theme.of(context).textTheme.bodyMedium : null,
        ),
        leading: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: AppSize.s50,
              height: AppSize.s50,
              decoration: BoxDecoration(
                  color: ColorManager.general,
                borderRadius: BorderRadius.all(Radius.circular(AppSize.s10))
              ),
            ),
            ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(AppSize.s10)),
                child: Image.network(
                  widget.imagePath,
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                  width: AppSize.s40,
                  height: AppSize.s40,
                )),
          ],
        ),
        trailing: IconButton(
            icon:widget.icon ?? Icon(Icons.bookmark_border_outlined),
            selectedIcon: Icon(
              Icons.bookmark,
              color: ColorManager.primary900,
            ),
            isSelected: widget.isSelected,
            onPressed:widget.onPressed,
            color: widget.isDark ? ColorManager.general : null),
      ),
    );
  }
}

class OptionSaves extends StatelessWidget {
  OptionSaves({required this.leadingIcon, required this.title,this.onPressed});

  Icon leadingIcon;
  String title;
  Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
            alignment: Alignment.centerLeft,
            fixedSize: Size(MediaQuery.of(context).size.width, AppSize.s40),
            shape: const StadiumBorder()),
        child: Row(
          children: [
            leadingIcon,
            SizedBox(
              width: AppSize.s10,
            ),
            Text(
              title,
              textAlign: TextAlign.start,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Spacer(),
            Icon(Icons.keyboard_arrow_right_rounded),
          ],
        ));
  }
}
