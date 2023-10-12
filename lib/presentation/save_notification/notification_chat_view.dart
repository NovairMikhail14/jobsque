import 'package:flutter/material.dart';
import 'package:jobsque/presentation/widgets/language_radioswitch.dart';
import 'package:jobsque/presentation/widgets/main_switchtile.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';

import '../widgets/job_tile.dart';

class NotificationChatView extends StatefulWidget {
  const NotificationChatView({Key? key}) : super(key: key);

  @override
  State<NotificationChatView> createState() => _SaveJobViewState();
}

class _SaveJobViewState extends State<NotificationChatView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorManager.general,
          title: const Text("Notification"),
        ),
        body: Container(
            child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: AppPadding.p8)
                  .copyWith(left: AppPadding.p20),
              alignment: Alignment.centerLeft,
              color: ColorManager.neutral200,
              height: AppSize.s36,
              child: Text("New"),
            ),
            Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      CircleAvatar(
                        maxRadius: 20,
                      ),
                      SizedBox(
                        width: AppSize.s10,
                      ),
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(AppPadding.p10),
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "A",
                                  style:
                                      Theme.of(context).textTheme.displaySmall,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      color: Color(0xffDBB40E),
                                      size: AppSize.s8,
                                    ),
                                    SizedBox(
                                      width: AppSize.s2,
                                    ),
                                    Text("10.00AM")
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: Text(
                                "Your email setup was successful with the following details: Your new email is rafifdianganz@gmail.com.",
                                textWidthBasis: TextWidthBasis.longestLine,
                                style: Theme.of(context).textTheme.labelMedium,
                                maxLines: 4),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: AppSize.s10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: AppPadding.p8)
                  .copyWith(left: AppPadding.p20),
              alignment: Alignment.centerLeft,
              color: ColorManager.neutral200,
              height: AppSize.s36,
              child: Text("Yesterday"),
            ),
          ],
        )));
  }
}
