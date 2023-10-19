import 'package:flutter/material.dart';
import 'package:jobsque/presentation/widgets/job_description.dart';
import 'package:jobsque/presentation/widgets/language_radioswitch.dart';
import 'package:jobsque/presentation/widgets/main_switchtile.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';

import '../../../../app/app_pref.dart';
import '../../../../app/di.dart';
import '../../resources/routes_manager.dart';
import '../widgets/job_tile.dart';
import 'message_tile.dart';

class NotificationListView extends StatefulWidget {
  const NotificationListView({Key? key}) : super(key: key);

  @override
  State<NotificationListView> createState() => _NotificationListViewState();
}

class _NotificationListViewState extends State<NotificationListView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorManager.general,
          title: const Text(AppStrings.saved),
        ),
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: AppPadding.p8),
                alignment: Alignment.center,
                color: ColorManager.neutral200,
                height: AppSize.s36,
                width: MediaQuery.of(context).size.width,
                child: Text("# Job Saved"),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 2,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Padding(
                      padding: EdgeInsets.all(8),
                      child: InkWell(
                        onTap: () {
                          // Navigator.of(context).pushNamed(
                          //     Routes.JobDescriptionViewRoute,
                          //     arguments: {"jobId": jobList[index].id});
                        },
                        child: MessageTile(
                          title: "A",
                          subtitle: "A",
                          imagePath: "",
                        ),
                      )),
                ),
              ),
            ),
          ],
        ));
  }
}
