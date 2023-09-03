import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:jobsque/presentation/widgets/main_titleblock.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/value_manager.dart';

class AddPDF extends StatefulWidget {
  const AddPDF({super.key});

  @override
  State<AddPDF> createState() => _AddPDFState();
}

class _AddPDFState extends State<AddPDF> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DottedBorder(
        radius: Radius.circular(AppSize.s8),
        color:ColorManager.primary500,
        dashPattern: [6],
        borderType: BorderType.RRect,
        child: Container(
          padding: EdgeInsets.fromLTRB(AppPadding.p16, AppPadding.p16, AppPadding.p20, AppPadding.p16),
          decoration: BoxDecoration(
              color: ColorManager.primary50
          ),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: ColorManager.primary100,
                radius: AppSize.s36,
                child: Icon(
                  Icons.picture_as_pdf,size: AppSize.s36,
                ),
              ),
              Text(AppStrings.prtfoUploadFile,style: Theme.of(context).textTheme.titleLarge,),
              Text(AppStrings.prtfoUploadFileinfo,style: Theme.of(context).textTheme.bodySmall,),
              SizedBox(height: AppSize.s10,),
              ElevatedButton(
                onPressed: () => (){},
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width, 48),
                    shape: const StadiumBorder(),
                    backgroundColor: ColorManager.primary100,
                    side: BorderSide(
                        color: ColorManager.primary500
                    )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.upload,color: ColorManager.primary500,),
                    SizedBox(width: AppSize.s12,),
                    Text(AppStrings.btnAddFile,style: Theme.of(context).textTheme.titleMedium!.copyWith(color: ColorManager.primary500),),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
