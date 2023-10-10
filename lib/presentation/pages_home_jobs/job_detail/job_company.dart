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

class JobCompanyView extends StatelessWidget {
String email;
String webSite;
String aboutCompany;

JobCompanyView(this.email, this.webSite, this.aboutCompany);

  TextEditingController td = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
            padding: EdgeInsets.symmetric(horizontal: AppPadding.p14),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.jobContactUs,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Row(
                  children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: AppPadding.p12,horizontal: AppPadding.p8),
                      margin: EdgeInsets.all(AppMargin.m10),
                      decoration: BoxDecoration(
                        border: Border.all(color: ColorManager.neutral200,width: AppSize.s2),
                        borderRadius: BorderRadius.circular(AppSize.s8)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppStrings.email,
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                          Text(
                            email,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                  ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: AppPadding.p12,horizontal: AppPadding.p8),
                        margin: EdgeInsets.all(AppMargin.m10),
                        decoration: BoxDecoration(
                            border: Border.all(color: ColorManager.neutral200,width: AppSize.s2),
                            borderRadius: BorderRadius.circular(AppSize.s8)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppStrings.website,
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                            Text(
                              webSite,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  AppStrings.jobAboutCompany,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(aboutCompany,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ));
  }
}
