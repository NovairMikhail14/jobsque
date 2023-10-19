import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:jobsque/presentation/widgets/custom_loading_indecator.dart';
import 'package:jobsque/presentation/widgets/job_description.dart';
import 'package:jobsque/presentation/widgets/language_radioswitch.dart';
import 'package:jobsque/presentation/widgets/main_switchtile.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';

import '../../../../../app/app_pref.dart';
import '../../../../../app/di.dart';
import '../../../resources/routes_manager.dart';
import '../widgets/job_tile.dart';
import '../widgets/main bottom_navigation.dart';
import 'cubit/deleteFavorite_cubit/delete_favorite_cubit.dart';
import 'cubit/showAllFavorite_cubit/show_all_favorite_cubit.dart';

class SavedJobsView extends StatefulWidget {
  const SavedJobsView({Key? key}) : super(key: key);

  @override
  State<SavedJobsView> createState() => _SavedJobsViewState();
}

class _SavedJobsViewState extends State<SavedJobsView> {
  @override
  void initState() {
BlocProvider.of<ShowAllFavoriteCubit>(context).showAllFavorites();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // BlocProvider.of<ShowAllFavoriteCubit>(context).showAllFavorites();

    return BlocConsumer<ShowAllFavoriteCubit, ShowAllFavoriteState>(
  listener: (context, state) {
    // TODO: implement listener
  },
  builder: (context, state) {
    BlocProvider.of<ShowAllFavoriteCubit>(context).showAllFavorites();
    if(state is ShowAllFavoriteSucess){
      return Scaffold(
        // key: GlobalKey<ShowAllFavoriteSucess>(),
          bottomNavigationBar: MainBottomNavigationBar(index: 3),
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
                  child: Text("${state.listJob.length} Job Saved"),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount:  state.listJob.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      print( "----------${state.listJob[index].id }");
                      return Padding(
                          padding: EdgeInsets.all(8),
                          child: InkWell(
                            onTap: () {
                              // Navigator.of(context).pushNamed(
                              //     Routes.JobDescriptionViewRoute,
                              //     arguments: {"jobId": jobList[index].id});
                            },
                            child:
                            SavedJobtItem(
                              title: state.listJob[index].job?.name??"",
                              subtitle:  state.listJob[index].job?.jobType??"",
                              imagePath:  state.listJob[index].job?.image??"",
                              jobId:  state.listJob[index].id,
                              // salary: int.parse( state.listJob[index].salary),
                            ),
                          ));
                    },
                  ),
                ),
              ),
            ],
          ));
    } else {return CustomLoadingIndicator();}
  },
);
  }
}

class SavedJobtItem extends StatelessWidget {
  SavedJobtItem({
    required this.imagePath,
    required this.subtitle,
     this.jobId,    required this.title,
  });

  String imagePath;
  String subtitle;
  String title;
  int? jobId;

  // int salary;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(AppPadding.p10),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            JobTile(
              imagePath: imagePath,
              subtitle: subtitle,
              title: title,
              icon: FaIcon(FontAwesomeIcons.ellipsis),
              onPressed: () {
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
                              children: [
                                OptionSaves(
                                  leadingIcon: Icon(Icons.print),
                                  title: "Apply Job",
                                ),
                                OptionSaves(
                                  leadingIcon: Icon(Icons.share_arrival_time),
                                  title: "Share via...",
                                ),
                                OptionSaves(
                                  leadingIcon: Icon(Icons.bookmark),
                                  title: "Cancel save",
                                  onPressed: () async {
                                   await BlocProvider.of<DeleteFavoriteCubit>(context).deleteFavorite(jobId.toString());
                                  Navigator.pop(context);
                                   },
                                )
                              ],
                            )));
                  },
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Posted 2 days ago"),
                Row(
                  children: [
                    FaIcon(FontAwesomeIcons.clock,color: ColorManager.success700,size:AppSize.s12 ),
                    SizedBox(width: AppSize.s8,),
                    Text("Be an early applicant"),
                  ],
                )
              ],
            )
          ]),
    );
  }
}
