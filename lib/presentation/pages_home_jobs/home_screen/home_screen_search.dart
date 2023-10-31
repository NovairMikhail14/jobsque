import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque/presentation/pages_home_jobs/cubit/getAllJob_cubit/get_all_job_cubit.dart';
import 'package:jobsque/presentation/pages_home_jobs/cubit/searchJob_cubit/search_job_cubit.dart';
import 'package:jobsque/presentation/widgets/main_listtile.dart';
import 'package:jobsque/presentation/widgets/main_switchtile.dart';
import 'package:jobsque/presentation/widgets/main_textfield.dart';
import 'package:jobsque/presentation/widgets/main_titleblock.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/routes_manager.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';
import 'package:flutter/cupertino.dart';

import '../../../domain/model/job_model.dart';
import '../../widgets/custom_loading_indecator.dart';
import '../../widgets/search_bar.dart';

class HomeScreenSearchView extends StatefulWidget {
  const HomeScreenSearchView({Key? key}) : super(key: key);

  @override
  State<HomeScreenSearchView> createState() => _HomeScreenSearchState();
}

class _HomeScreenSearchState extends State<HomeScreenSearchView> {
@override
  void initState() {
  BlocProvider.of<SearchJobCubit>(context).searchJob("");
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // List<Job> listJob = [];
    List<Job> listJob = BlocProvider.of<SearchJobCubit>(context).listJobs;
    return BlocConsumer<SearchJobCubit, SearchJobState>(
      listener: (context, state) {
      if (state is SearchJobSuccess) {
        listJob = BlocProvider.of<SearchJobCubit>(context).listJobs;
      }
      },
      builder: (context, state) {
        if (state is SearchJobSuccess) {
          return Scaffold(
              appBar: AppBar(
                toolbarHeight: AppSize.s12,
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back_outlined)),
                        Expanded(
                          child: MainSearchBar(
                            onEditingComplete: () {
                              Navigator.of(context)
                                  .pushNamed(Routes.HomeScreenFilter);
                            },
                            onChanged: (value) async {
                              listJob = await BlocProvider.of<SearchJobCubit>(context).searchJob(value)??[];
                              setState(() {
                                listJob ;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: AppPadding.p8),
                      alignment: Alignment.centerLeft,
                      color: ColorManager.neutral200,
                      height: AppSize.s36,
                      width: MediaQuery.of(context).size.width,
                      child: Text(AppStrings.searchesPopular),
                    ),
                    ListView.builder(
                      itemCount: listJob.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return ListTile(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(Routes.HomeScreenFilter);
                          },
                          title: Text(listJob[index].name),
                          leading: Icon(
                            Icons.youtube_searched_for,
                            color: ColorManager.neutral500,
                          ),
                          trailing: Icon(
                            Icons.arrow_circle_right_outlined,
                            color: ColorManager.primary500,
                          ),
                        );
                      },
                    )
                  ],
                ),
              ));
        } else {
          return CustomLoadingIndicator();
        }
      },
    );
  }
}
