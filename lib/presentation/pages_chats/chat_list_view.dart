import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobsque/presentation/pages_chats/chats_usecase/allChats_cubit/all_chats_cubit.dart';
import 'package:jobsque/presentation/pages_chats/chats_usecase/userSendMessage_cubit/user_send_message_cubit.dart';
import 'package:jobsque/presentation/widgets/custom_loading_indecator.dart';
import 'package:jobsque/presentation/widgets/job_description.dart';
import 'package:jobsque/presentation/widgets/language_radioswitch.dart';
import 'package:jobsque/presentation/widgets/main_switchtile.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';
import '../../../../app/app_pref.dart';
import '../../../../app/di.dart';
import '../../resources/routes_manager.dart';
import '../widgets/job_tile.dart';
import '../widgets/search_bar.dart';
import 'message_tile.dart';

class ChatListView extends StatefulWidget {
  ChatListView(this.compId, this.compName, this.image);

  int compId;
  String compName;
  String image;

  @override
  State<ChatListView> createState() => _ChatListViewState();
}

class _ChatListViewState extends State<ChatListView> {
  @override
  void initState() {
    BlocProvider.of<AllChatsCubit>(context).getAllChats(widget.compId);
    super.initState();
  }

  String message = "";

  @override
  Widget build(BuildContext context) {
    print("---sadasd--${widget.compId}");

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: AppSize.s80,
        elevation: AppSize.s2,
        backgroundColor: ColorManager.general,
        title: Row(children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: AppSize.s50,
                height: AppSize.s50,
                decoration: BoxDecoration(
                    color: ColorManager.general,
                    borderRadius:
                    BorderRadius.all(Radius.circular(AppSize.s10))),
              ),
              CircleAvatar(
                  radius: AppSize.s20,
                  child: Image.network(
                    widget.image,
                    fit: BoxFit.contain,
                    alignment: Alignment.center,
                    width: AppSize.s40,
                    height: AppSize.s40,
                  )),
            ],
          ),
          SizedBox(
            width: AppSize.s8,
          ),
          Text(widget.compName),
        ]),
      ),
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BlocBuilder<UserSendMessageCubit, UserSendMessageState>(
        builder: (context, state) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: AppMargin.m10),
            padding: EdgeInsets.symmetric(horizontal: AppPadding.p10),
            width: MediaQuery
                .of(context)
                .size
                .width * 0.5,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: AppSize.s26,
                  backgroundColor: ColorManager.neutral300,
                  child: CircleAvatar(
                    radius: AppSize.s24,
                    backgroundColor: ColorManager.general,
                    child: IconButton(icon: Icon(Icons.send),
                      onPressed: () {
                        BlocProvider.of<UserSendMessageCubit>(context)
                            .sendMessage(message, widget.compId.toString());
                        BlocProvider.of<AllChatsCubit>(context)
                            .getAllChats(widget.compId);
                      },
                      color: ColorManager.neutral900,
                    ),
                  ),
                ),
                SizedBox(
                  width: AppSize.s10,
                ),
                Expanded(child: SearchBar(onChanged: (p0) {
                  setState(() {
                    message = p0;
                  });
                },)),
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
                      FontAwesomeIcons.microphone,
                      color: ColorManager.neutral900,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
      body: BlocBuilder<AllChatsCubit, AllChatsState>(
        builder: (context, state) {
          if (state is AllChatsSuccess) {
            return Container(
              decoration: BoxDecoration(
                  color: ColorManager.neutral200,
                  border:
                  Border(top: BorderSide(color: ColorManager.neutral500))),
              // height: 600,
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: state.chatsList.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return CustomChatListViewTile(
                          isUser: (state.chatsList.reversed.toList()[index].senderUser ==
                              "user"),
                          message: state.chatsList.reversed.toList()[index].massage,
                          width: 6,
                          deviceHeight: 6,
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          } else {
            return CustomLoadingIndicator();
          }
        },
      ),
    );
  }
}

class CustomChatListViewTile extends StatelessWidget {
  CustomChatListViewTile({required this.width,
    required this.deviceHeight,
    required this.message,
    required this.isUser});

  final double width;
  final double deviceHeight;
  final String message;
  final bool isUser;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment:
      isUser ? MainAxisAlignment.start : MainAxisAlignment.end,
      children: [
        Container(
          padding: EdgeInsets.all(AppPadding.p10),
          margin: EdgeInsets.all(AppPadding.p10),
          decoration: BoxDecoration(
              color: isUser ? ColorManager.primary500 : ColorManager.neutral300,
              borderRadius: BorderRadius.only(
                  topRight: isUser
                      ? Radius.circular(AppSize.s8)
                      : Radius.circular(AppSize.s0),
                  topLeft: isUser
                      ? Radius.circular(AppSize.s0)
                      : Radius.circular(AppSize.s8),
                  bottomLeft: Radius.circular(AppSize.s8),
                  bottomRight: Radius.circular(AppSize.s8))),
          child: Text(message,
              style: TextStyle(
                  color:
                  isUser ? ColorManager.general : ColorManager.neutral900)),
        )
      ],
    );
  }
}
