import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque/presentation/widgets/main_titleblock.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/routes_manager.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';
import '../../../domain/model/job_model.dart';
import '../../pages_profile/cubit/getAllPortofolios_cubit/get_all_portofolios_cubit.dart';
import '../../widgets/job_description.dart';
import '../../widgets/job_tile.dart';
import '../../widgets/search_bar.dart';
import '../../widgets/title_list_bar.dart';
import '../cubit/getAllJob_cubit/get_all_job_cubit.dart';
import '../job_detail/job_detail_view.dart';

class HomeScreenView extends StatelessWidget {
  HomeScreenView({Key? key}) : super(key: key);
  bool switchVar = true;

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<GetAllJobCubit>(context).getAllJobs();
    List<Job> jobList = [];
    return BlocConsumer<GetAllJobCubit, GetAllJobState>(
      listener: (context, state) {
        if (state is GetAllJobSuccess) {
          jobList = BlocProvider.of<GetAllJobCubit>(context).jobList;
        }
      },
      builder: (context, state) {
        return Scaffold(
            appBar: AppBar(
              title: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.profileRoute);
                    },
                    child: MainTitleBlock(
                      title: "Name",
                      subtitle: "Create a better future for yourself here",
                    ),
                  ),
                  SearchBar(
                      onChanged: (p0) {},
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(Routes.HomeScreenSearchRoute);
                      }),
                ],
              ),
              toolbarHeight: AppSize.s125,
            ),
            body: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      TitleListBar(
                          title: AppStrings.jobSuggested, onPressed: () {}),
                      Container(
                        height: 220,
                        child: ListView.builder(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.horizontal,
                          itemCount: jobList.length,
                          itemBuilder: (context, index) {
                            return Padding(
                                padding: EdgeInsets.all(8),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, Routes.JobDescriptionViewRoute,
                                        arguments: ScreenArguments(
                                            jobList[index].id.toString()));
                                  },
                                  child: JobSuggestItem(
                                    title: jobList[index].name,
                                    subtitle: jobList[index].jobType,
                                    imagePath: jobList[index].image,
                                    salary: int.parse(jobList[index].salary),
                                    descriptionList: [
                                      jobList[index].jobTimeType,
                                      jobList[index].jobType,
                                    ],
                                  ),
                                ));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SliverToBoxAdapter(
                  child: TitleListBar(
                      title: AppStrings.jobRecent, onPressed: () {}),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: jobList.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => Padding(
                          padding: EdgeInsets.all(8),
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).pushNamed(
                                  Routes.JobDescriptionViewRoute,
                                  arguments: {"jobId": jobList[index].id});
                            },
                            child: JobRecentItem(
                              title: jobList[index].name,
                              subtitle: jobList[index].jobType,
                              imagePath: jobList[index].image,
                              salary: int.parse(jobList[index].salary),
                              descriptionList: [
                                jobList[index].jobTimeType,
                                jobList[index].jobType,
                              ],
                            ),
                          )),
                    ),
                  ),
                ),
              ],
            ));
      },
    );
  }
}

class JobSuggestItem extends StatelessWidget {
  JobSuggestItem({
    required this.descriptionList,
    required this.imagePath,
    required this.subtitle,
    required this.salary,
    required this.title,
  });

  String imagePath;
  String subtitle;
  String title;
  List descriptionList;
  int salary;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      padding: EdgeInsets.all(AppPadding.p8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: ColorManager.primary900,
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            JobTile(
              imagePath: imagePath,
              subtitle: subtitle,
              title: title,
              isDark: true,
            ),
            JobDescription(
              isDark: true,
              descriptionList: descriptionList,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text("${(salary / 1000).toString().split(".")[0]}K",
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(color: ColorManager.general)),
                    Text("/Month",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: ColorManager.general)),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(100, 40),
                    shape: const StadiumBorder(),
                  ),
                  child: Text(AppStrings.btnApplyNow,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: ColorManager.general)),
                )
              ],
            )
          ]),
    );
  }
}

class JobRecentItem extends StatelessWidget {
  JobRecentItem({
    required this.descriptionList,
    required this.imagePath,
    required this.subtitle,
    required this.salary,
    required this.title,
  });

  String imagePath;
  String subtitle;
  String title;
  List descriptionList;
  int salary;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      // padding: EdgeInsets.all(AppPadding.p10),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            JobTile(
              imagePath: imagePath,
              subtitle: subtitle,
              title: title,
            ),
            JobDescription(
              descriptionList: descriptionList,
              salary: salary,
            )
          ]),
    );
  }
}
