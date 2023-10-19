import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
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
import 'package:jobsque/resources/routes_manager.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';

import '../../../domain/model/job_model.dart';
import '../../widgets/custom_loading_indecator.dart';
import '../cubit/getAllJob_cubit/get_all_job_cubit.dart';
import '../cubit/jobID_cubit/job_id_cubit.dart';
import '../home_screen/home_screen_view.dart';
import 'job_company.dart';
import 'job_description.dart';



class JobDetailView extends StatefulWidget {
  final String id;

  JobDetailView(this.id);

  @override
  State<JobDetailView> createState() => _JobDetailViewState();
}

class _JobDetailViewState extends State<JobDetailView> {
  Job? job;

  @override
  void initState() {
    BlocProvider.of<JobIdCubit>(context).getJobById(widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int index = BlocProvider.of<JobIdCubit>(context).index;

    return BlocConsumer<JobIdCubit, JobIdState>(
      listener: (context, state) {
        if (state is JobIdSuccess) {}
      },
      builder: (context, state) {
        if (state is JobIdSuccess) {
          return Scaffold(
              appBar: AppBar(
                backgroundColor: ColorManager.general,
                title: const Text(AppStrings.appliedJob),
              ),
              body: Container(
                  padding: EdgeInsets.symmetric(horizontal: AppPadding.p14),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                          borderRadius:
                              BorderRadius.all(Radius.circular(AppSize.s12)),
                          child: Image.network(state.job.image,
                              height: AppSize.s80)),
                      MainTitleBlock(
                          title: state.job.name,
                          subtitle: state.job.jobType,
                          textAlign: TextAlign.center,
                          alignment: CrossAxisAlignment.center),
                      JobDescription(descriptionList: [
                        state.job.jobTimeType,
                        state.job.jobType,
                      ], isCenter: true),
                      MainToggleSwitch(
                        list: [
                          AppStrings.description,
                          AppStrings.company,
                          AppStrings.people
                        ],
                        index: index,
                        onToggle: (tglindex) {
                          setState(() {
                            BlocProvider.of<JobIdCubit>(context).index =
                                tglindex!;
                          });
                        },
                      ),
                      Text("${context.read<JobIdCubit>().index}"),
                      Builder(
                        builder: (context) {
                          if (BlocProvider.of<JobIdCubit>(context).index == 0) {
                            return JobDescriptionView(
                                state.job.jobDescription, state.job.jobSkill);
                          } else if (BlocProvider.of<JobIdCubit>(context)
                                  .index ==
                              1) {
                            return JobCompanyView(state.job.compEmail,
                                state.job.compWebsite, state.job.aboutComp);
                          } else {
                            return CustomLoadingIndicator();
                          }
                        },
                      ),
                      Spacer(
                        flex: AppSize.s1.toInt(),
                      ),
                      MainButton(
                          text: AppStrings.btnApplyNow,
                          onPress: () {
                            Navigator.of(context)
                                .pushNamed(Routes.BioDataViewRoute);
                          }),
                    ],
                  )));
        } else {
          return CustomLoadingIndicator();
        }
      },
    );
  }
}
