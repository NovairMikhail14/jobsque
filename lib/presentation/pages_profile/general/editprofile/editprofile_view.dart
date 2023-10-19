import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque/presentation/widgets/main_listtile.dart';
import 'package:jobsque/presentation/widgets/main_button.dart';
import 'package:jobsque/presentation/widgets/main_textfield.dart';
import 'package:jobsque/presentation/widgets/main_titleblock.dart';
import 'package:jobsque/resources/assets_manager.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/font_manager.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import '../../../widgets/custom_loading_indecator.dart';
import '../../../widgets/phonenumber.dart';
import '../../cubit/editAllPortofolio_cubit/edit_all_portofolio_cubit.dart';

class EditProfileView extends StatefulWidget {
  String name;
  String bio;
  String address;
  String phone;

  EditProfileView(this.name, this.bio, this.address, this.phone);

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
  late String name;
  late String bio;
  late String address;
  late String mobile;
  GlobalKey<FormState>  _formKey = GlobalKey<FormState>();
  final TextEditingController controller = TextEditingController();
  String initialCountry = 'EGY';
  PhoneNumber number = PhoneNumber(isoCode: 'EGY');
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EditAllPortofolioCubit, EditAllPortofolioState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
          return Form(
            key: _formKey,
            child: Scaffold(
                appBar: AppBar(
                  backgroundColor: ColorManager.general,
                  title: Text(AppStrings.profile),
                ),
                body: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: AppPadding.p14),
                    child: Column(children: [
                      Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Container(
                            height: 100,
                            color: ColorManager.general,
                          ),
                          Container(
                            height: 45,
                            color: ColorManager.general,
                          ),
                          CircleAvatar(
                            backgroundColor: ColorManager.primary500,
                            backgroundImage: AssetImage(""),
                            radius: AppSize.s45,
                          )
                        ],
                      ),
                      Text(AppStrings.profilePhoto,
                          style: Theme
                              .of(context)
                              .textTheme
                              .bodyLarge!
                              .apply(color: ColorManager.primary500)),
                      MainTextField(
                          isTitleBlack: true,
                          onChanged: (text) {

                          },
                          initialValue: widget.name,
                          hintText: AppStrings.profileName,
                          isTitle: true),
                      MainTextField(
                          isTitleBlack: true,
                          onChanged: (text) {
                            bio =text;
                          },
                          initialValue: widget.bio,
                          hintText: AppStrings.profileBio,
                          isTitle: true),
                      MainTextField(
                          isTitleBlack: true,
                          onChanged: (text) {
                            address =text;
                          },
                          initialValue: widget.address,
                          hintText: AppStrings.profileAddress,
                          isTitle: true),
                      PhoneNumberTextField(
                        initialValue: widget.phone,
                        onInputChanged: (p0) {
                          mobile =p0.phoneNumber!;
                          return ;
                        },

                      ),
                      SizedBox(
                        height: AppSize.s100,
                      ),
                      MainButton(text: AppStrings.btnSave, onPress: () {
                        BlocProvider.of<EditAllPortofolioCubit>(context).editPortofoliosData(bio, address, mobile);
                        Navigator.pop(context);
                      }),
                    ]),
                  ),
                )),
          );
      },
    );
  }
}
