import 'package:flutter/material.dart';
import 'package:jobsque/presentation/widgets/language_radioswitch.dart';
import 'package:jobsque/presentation/widgets/main_switchtile.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';

import '../widgets/job_tile.dart';

class MessagesView extends StatefulWidget {
  const MessagesView({Key? key}) : super(key: key);

  @override
  State<MessagesView> createState() => _SaveJobViewState();
}

class _SaveJobViewState extends State<MessagesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorManager.general,
          title: const Text("Messsages"),
        ),
        body: Container(
            child: Column(
          children: [
            Row(
              children: [
                Container(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    decoration: BoxDecoration(),
                    child: TextField(
                        decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: ColorManager.neutral300),
                          borderRadius: BorderRadius.circular(600)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: ColorManager.primary500),
                          borderRadius: BorderRadius.circular(600)),
                      contentPadding: const EdgeInsets.fromLTRB(AppPadding.p17,
                          AppPadding.p12, AppPadding.p17, AppPadding.p12),
                      prefixIcon: Icon(Icons.search),
                      hintText: AppStrings.homeScreenSearch,
                      hintStyle: Theme.of(context).textTheme.bodyMedium,
                    )),
                  ),
                ),
                IconButton(
                  style: IconButton.styleFrom(
                      side: BorderSide(
                    color: ColorManager.danger500,
                    width: AppSize.s4,
                  )),
                  onPressed: () {
                    BottomListViewer();
                  },
                  icon: Icon(Icons.abc),
                )
              ],
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
                                Text("12.39")
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: Text(
                                "Your email setup was successful with the following details: ",
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
          ],
        )));
  }

  BottomListViewer() {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(AppSize.s20),
              topRight: Radius.circular(AppSize.s20))),
      builder: (BuildContext context) {
        return Container(
            padding: EdgeInsets.all(AppPadding.p10),
            height: MediaQuery.of(context).size.height * 0.3,
            decoration: BoxDecoration(
                color: ColorManager.general,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppSize.s20),
                    topRight: Radius.circular(AppSize.s20))),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Message filters",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                OptionSaves(
                  leadingIcon: Icon(Icons.print),
                  title: "Unread",
                ),
                OptionSaves(
                  leadingIcon: Icon(Icons.share_arrival_time),
                  title: "Spam",
                ),
                OptionSaves(
                  leadingIcon: Icon(Icons.bookmark),
                  title: "Archived",
                )
              ],
            )));
      },
    );
  }
}
