
import 'package:flutter/material.dart';

import '../../../resources/strings_manager.dart';
import '../../../resources/value_manager.dart';

class JobDescriptionView extends StatelessWidget {
  String jobDescription;
  String skillReq;

  JobDescriptionView(this.jobDescription, this.skillReq);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: AppPadding.p14),
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.jobDescription,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Text(
              jobDescription,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              AppStrings.jobSkillRequired,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Text(
              skillReq,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ));
  }
}
