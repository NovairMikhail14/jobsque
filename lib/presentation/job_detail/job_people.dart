import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/presentation/widgets/job_description.dart';
import 'package:jobsque/presentation/widgets/job_steps.dart';
import 'package:jobsque/presentation/widgets/job_tile.dart';
import 'package:jobsque/presentation/widgets/main_button.dart';
import 'package:jobsque/presentation/widgets/language_radioswitch.dart';
import 'package:jobsque/presentation/widgets/main_switchtile.dart';
import 'package:jobsque/presentation/widgets/main_textfield.dart';
import 'package:jobsque/presentation/widgets/main_titleblock.dart';
import 'package:jobsque/presentation/widgets/toggleswitch.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';

class JobPeopleView extends StatefulWidget {
  int noEmployees;

  JobPeopleView(this.noEmployees);

  @override
  State<JobPeopleView> createState() => _JobPeopleViewState();
}

class _JobPeopleViewState extends State<JobPeopleView> {
  TextEditingController td = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: AppPadding.p14),
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: AppPadding.p12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${widget.noEmployees} Employees For",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        "AAAAAAAAAAAA",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 1,
              itemBuilder: (context, index) {
                return ListTile(
                  shape: Border(
                      bottom: BorderSide(
                          color: ColorManager.neutral300, width: AppSize.s2)),
                  title: Text(
                    "#Name",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  subtitle: Text(
                    "#Job",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "#Job",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      Text(
                        "#Job",
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(color: ColorManager.primary500),
                      ),
                    ],
                  ),
                );
              },
            )
          ],
        ));
  }
}
