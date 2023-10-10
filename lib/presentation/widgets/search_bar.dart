import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jobsque/presentation/pages_home_jobs/home_screen/home_screen_search.dart';

import '../../resources/color_manger.dart';
import '../../resources/font_manager.dart';
import '../../resources/strings_manager.dart';
import '../../resources/style_manager.dart';
import '../../resources/value_manager.dart';

class SearchBar extends StatelessWidget {
  Function()? onTap;
  Function()? onEditingComplete;
  Function(String)? onChanged;
  SearchBar({ this.onChanged, this.onTap,this.onEditingComplete});

  @override
  Widget build(BuildContext context) {
    return TextField(
        onTap:  onTap ,
        onEditingComplete: onEditingComplete,
        onChanged: onChanged,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ColorManager.neutral300),
              borderRadius: BorderRadius.circular(600)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ColorManager.primary500),
              borderRadius: BorderRadius.circular(600)),
          contentPadding: const EdgeInsets.fromLTRB(
              AppPadding.p17, AppPadding.p12, AppPadding.p17, AppPadding.p12),
          prefixIcon: Icon(Icons.search),
          hintText: AppStrings.homeScreenSearch,
          hintStyle: Theme.of(context).textTheme.bodyMedium,
        ));
  }
}

// class MySearchDelegate extends SearchDelegate {
//
//   List suggestList = [
//     "A","B"
//   ];
//   @override
//   String? get searchFieldLabel => "Type something";
//   InputDecorationTheme? get searchFieldDecorationTheme => InputDecorationTheme(
//     enabledBorder: OutlineInputBorder(
//         borderSide: BorderSide(color: ColorManager.neutral300),
//         borderRadius: BorderRadius.circular(600)),
//     focusedBorder: OutlineInputBorder(
//         borderSide: BorderSide(color: ColorManager.primary500),
//         borderRadius: BorderRadius.circular(600)),
//     contentPadding: const EdgeInsets.fromLTRB(
//         AppPadding.p17, AppPadding.p12, AppPadding.p17, AppPadding.p12),
//   );
//
//   @override
//   List<Widget>? buildActions(BuildContext context) {
//     return [
//       IconButton(
//           onPressed: () {
//             if (query.isEmpty) {
//               close(context, null);
//             } else {
//               query = "";
//             }
//           },
//           icon: Icon(Icons.cancel_outlined))
//     ];
//   }
//
//   @override
//   Widget? buildLeading(BuildContext context) {
//     return IconButton(
//         onPressed: () {
//           close(context, null);
//         },
//         icon: Icon(Icons.arrow_back_outlined));
//   }
//
//   @override
//   Widget buildResults(BuildContext context) {
//
//     return  Container(
//       padding: EdgeInsets.symmetric(horizontal: AppPadding.p8),
//       alignment: Alignment.centerLeft,
//       color: ColorManager.neutral200,
//       height:AppSize.s36 ,
//       width: MediaQuery.of(context).size.width,
//       child: Text(query),
//     );
//   }
//
//   @override
//   Widget buildSuggestions(BuildContext context) {
//     List suggest = suggestList.where((element) {
//       final result = element.toLowerCase();
//       final input = query.toLowerCase();
//       return result.contains(input);
//     }).toList();
//     return ListView.builder(
//       itemCount: suggest.length,
//       itemBuilder: (context, index) {
//       return  ListTile(
//         title: Text(suggest[index]),
//         onTap: () {
//           query = suggest[index];
//           showResults(context);
//         },
//       );
//     },);
//   }
// }
