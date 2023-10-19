import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque/presentation/widgets/custom_loading_indecator.dart';
import 'package:jobsque/presentation/widgets/job_description.dart';
import 'package:jobsque/presentation/widgets/job_steps.dart';
import 'package:jobsque/presentation/widgets/job_tile.dart';
import 'package:jobsque/presentation/widgets/language_radioswitch.dart';
import 'package:jobsque/presentation/widgets/main_switchtile.dart';
import 'package:jobsque/presentation/widgets/toggleswitch.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';

import '../../domain/model/apply_model.dart';
import '../../domain/model/job_model.dart';
import '../0cubit/apply_usecase/showApply_cubit/show_apply_cubit.dart';
import '../pages_home_jobs/cubit/getAllJob_cubit/get_all_job_cubit.dart';
import '../widgets/main bottom_navigation.dart';

class AppliedJobView extends StatefulWidget {
  const AppliedJobView({Key? key}) : super(key: key);

  @override
  State<AppliedJobView> createState() => _AppliedJobViewState();
}

class _AppliedJobViewState extends State<AppliedJobView> {
  @override
  void initState() {
    BlocProvider.of<ShowApplyCubit>(context).getAllApplied();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: MainBottomNavigationBar(index: 2),
        appBar: AppBar(
          backgroundColor: ColorManager.general,
          title: const Text(AppStrings.appliedJob),
        ),
        body: BlocConsumer<ShowApplyCubit, ShowApplyState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            print("---------------$state");
            if (state is ShowApplySuccess) {
              return Container(
                  child: Column(
                children: [
                  MainToggleSwitch(
                    list: [
                      AppStrings.appliedJobActive,
                      AppStrings.appliedJobRejected
                    ],
                    index: 0,
                    onToggle: (p0) {},
                  ),
                  SizedBox(
                    height: AppSize.s20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: AppPadding.p8),
                    alignment: Alignment.centerLeft,
                    color: ColorManager.neutral200,
                    height: AppSize.s36,
                    width: MediaQuery.of(context).size.width,
                    child: Text(AppStrings.notfJob),
                  ),
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: state.listApplyJob.length,
                      itemBuilder: (context, index) {
                        List<Job> jobAllList =
                            BlocProvider.of<GetAllJobCubit>(context).jobList;
                        List<int> jobApplyedList = state.listApplyJob
                            .map((element) {
                              return element.jobsId;
                            })
                            .cast<int>()
                            .toList();
                        List<Job?> finalFilterList = jobAllList.map((element) {
                          for (int id in jobApplyedList) {
                            if (element.id == id) {
                              return element;
                            }
                          }
                        }).toList();
                        print("---asdasd---------$jobApplyedList");
                        return ApplyJobTile(
                            finalFilterList[index]?.image ?? "",
                            finalFilterList[index]?.jobType ?? "",
                            finalFilterList[index]?.name ?? "",
                            [
                              finalFilterList[index]?.jobTimeType,
                              finalFilterList[index]?.jobType,
                            ] );
                      },
                    ),
                  )
                ],
              ));
            } else {
              return CustomLoadingIndicator();
            }
          },
        ));
  }
}

class ApplyJobTile extends StatelessWidget {
  String imagePath;
  String subtitle;
  String title;
  List descriptionList;

  ApplyJobTile(this.imagePath, this.subtitle, this.title, this.descriptionList,);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      margin: const EdgeInsets.only(bottom: AppSize.s12),
      padding: const EdgeInsets.all(AppSize.s12),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(width: 2, color: ColorManager.neutral200))),
      child: Column(
        children: [
          JobTile(
            title: title,
            subtitle: subtitle,
            imagePath: imagePath,
          ),
          JobDescription(
            isCenter: true,
            period: "A",
            descriptionList: descriptionList,
          ),
          SizedBox(
            height: AppSize.s10,
          ),
          JobSteps()
        ],
      ),
    );
  }
}
