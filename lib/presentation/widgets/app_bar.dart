import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';
import '../../resources/assets_manager.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        title: Row(
          children: [
            SvgPicture.asset(ImageAssets.logo,height: AppSize.s20),
            const Spacer(),
            Text(AppStrings.skip,style: Theme.of(context).textTheme.bodyLarge,)
          ],
        ),
    );
  }
}
