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

import '../../../../app/app_pref.dart';
import '../../../../app/di.dart';
import '../../domain/model/chat_model.dart';
import '../../domain/model/company_model.dart';
import '../../resources/routes_manager.dart';
import '../widgets/job_tile.dart';
import '../widgets/main bottom_navigation.dart';
import '../widgets/search_bar.dart';
import 'chats_usecase/allChats_cubit/all_chats_cubit.dart';
import 'chats_usecase/getAllCompany_cubit/get_all_company_cubit.dart';
import 'message_tile.dart';
class CompanyArg{
 int compId;
 String compName;
 String image;
 CompanyArg(this.compId,this.compName,this.image);
}
class MessagesListView extends StatefulWidget {
  const MessagesListView({Key? key}) : super(key: key);

  @override
  State<MessagesListView> createState() => _MessagesListViewState();
}

class _MessagesListViewState extends State<MessagesListView> {
  List<Company> listCompany = [];
  List<List<Chat>> chatsList = [];
  List compId = [];

  @override
  void initState() {
    getlistCompany();

    // getChatsList();
  }

  getlistCompany() async {
    await BlocProvider.of<GetAllCompanyCubit>(context).getAllCompany();
  }

  getChatsList() {
    compId.forEach((element) async {
      return await BlocProvider.of<AllChatsCubit>(context).getAllChats(element);
    });
  }

  @override
  Widget build(BuildContext context) {
print("-------asdasd${compId}");
getChatsList();
    return Scaffold(
        bottomNavigationBar: MainBottomNavigationBar(index: 1),
        appBar: AppBar(
          backgroundColor: ColorManager.general,
          title: const Text("Messages"),
        ),
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
                child: Container(
              padding: EdgeInsets.symmetric(horizontal: AppPadding.p10),
              width: MediaQuery.of(context).size.width * 0.5,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(child: SearchBar()),
                  SizedBox(
                    width: AppSize.s10,
                  ),
                  CircleAvatar(
                    radius: AppSize.s26,
                    backgroundColor: ColorManager.neutral300,
                    child: CircleAvatar(
                      radius: AppSize.s24,
                      backgroundColor: ColorManager.general,
                      child: FaIcon(
                        FontAwesomeIcons.sliders,
                        color: ColorManager.neutral900,
                      ),
                    ),
                  )
                ],
              ),
            )),
            SliverToBoxAdapter(
              child: BlocBuilder<GetAllCompanyCubit, GetAllCompanyState>(
                  builder: (context, state) {
                    // print("--------${state}");
                if (state is GetAllCompanySuccess) {

                  compId = state.listCompany.map((e) => e.id).toList();
                  listCompany = state.listCompany.toList();
                  return SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: compId.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return BlocBuilder<AllChatsCubit, AllChatsState>(
                          builder: (context, state) {
                            if (state is AllChatsSuccess) {
                              chatsList.add(state.chatsList) ;
                              // print("---sadasd--${chatsList[index]
                              //     .map((element) => element.massage)
                              //     .toList().last}");
                              return Padding(
                                  padding: EdgeInsets.all(8),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).pushNamed(
                                          Routes.ChatListViewRoute,
                                          arguments:  CompanyArg(listCompany[index].id,listCompany[index].name,listCompany[index].image));
                                    },
                                    child: MessageTile(
                                      title: listCompany[index].name,
                                      subtitle: chatsList[index]
                                          .map((element) => element.massage).first,
                                      imagePath: listCompany[index].image,
                                    ),
                                  ));
                            } else {
                              return CustomLoadingIndicator();
                            }
                          },
                        );
                      },
                    ),
                  );
                } else {
                  return Container();
                }
              }),
            ),
          ],
        ));
  }
}
