import 'package:flutter/material.dart';
import 'package:jobsque/resources/value_manager.dart';

class MainTitleBlock extends StatelessWidget {
  String title;
  String subtitle;
  CrossAxisAlignment alignment;
  TextAlign textAlign;
  MainTitleBlock({required this.title, required this.subtitle,this.alignment =CrossAxisAlignment.start, this.textAlign =TextAlign.start });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: AppMargin.m8),
          child: Column(
            crossAxisAlignment: alignment,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width*0.9,
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.headlineLarge,textAlign: textAlign ,
                  maxLines: 2,
                ),
              ),
              SizedBox(
                height: AppSize.s4,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width*0.9,
                child: Text(
                  subtitle,
                  style: Theme.of(context).textTheme.bodyLarge,textAlign: textAlign,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
