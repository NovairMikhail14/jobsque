import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/font_manager.dart';
import 'package:jobsque/resources/style_manager.dart';
import 'package:jobsque/resources/value_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
      // Main Colors
      scaffoldBackgroundColor: ColorManager.general,
      primaryColor: ColorManager.primary500,
      primaryColorLight: ColorManager.primary200,
      primaryColorDark: ColorManager.primary900,
      disabledColor: ColorManager.neutral300,
      splashColor: ColorManager.primary100,

      //Ripple Effect

      // CardView Theme
      cardTheme: CardTheme(
        color: ColorManager.neutral200,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s12),
            side:
                BorderSide(color: ColorManager.neutral300, width: AppSize.s1)),
        // shadowColor: ColorManager.neutral900,
        // elevation: AppSize.s4,
      ),

      // App bar Theme
      appBarTheme: AppBarTheme(
          centerTitle: true,
          color: ColorManager.general,
          elevation: AppSize.s0,
          iconTheme: IconThemeData(color: ColorManager.neutral900),
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: ColorManager.general,
              statusBarBrightness: Brightness.dark,
              statusBarIconBrightness: Brightness.dark),
          titleTextStyle: getMediumStyle(
              color: ColorManager.neutral900, fontSize: FontSize.s20)),

      // Elevated Button theme
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: ColorManager.primary500,
              shape: const StadiumBorder(),
              textStyle: getMediumStyle(
                  color: ColorManager.general, fontSize: FontSize.s16))),

      // Text Theme
      textTheme: TextTheme(
        // text theme
        displayLarge: getMediumStyle(
            color: ColorManager.neutral900, fontSize: FontSize.s32),
        displayMedium: getMediumStyle(
            color: ColorManager.neutral900, fontSize: FontSize.s16),
        displaySmall: getMediumStyle(
            color: ColorManager.neutral900, fontSize: FontSize.s14),

        // ---->  headline theme
        headlineLarge: getMediumStyle(
            color: ColorManager.neutral900, fontSize: FontSize.s28),
        headlineMedium: getMediumStyle(
            color: ColorManager.neutral900, fontSize: FontSize.s24),
        headlineSmall: getMediumStyle(
            color: ColorManager.neutral900, fontSize: FontSize.s20),
        // ---->  title theme
        titleLarge: getMediumStyle(
            color: ColorManager.neutral900, fontSize: FontSize.s18),
        titleMedium: getMediumStyle(
            color: ColorManager.neutral900, fontSize: FontSize.s16),
        titleSmall: getMediumStyle(
            color: ColorManager.neutral900, fontSize: FontSize.s14),

        // body theme
        bodyLarge: getRegularStyle(
            color: ColorManager.neutral500, fontSize: FontSize.s16),
        bodyMedium: getRegularStyle(
            color: ColorManager.neutral500, fontSize: FontSize.s14),
        bodySmall: getRegularStyle(
            color: ColorManager.neutral500, fontSize: FontSize.s12),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          backgroundColor: ColorManager.general,
          elevation: AppSize.s0,
          selectedItemColor: ColorManager.primary500,
          unselectedIconTheme: IconThemeData(color: ColorManager.neutral400)),

      // TextFormField Theme
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.fromLTRB(
            AppPadding.p0, AppPadding.p16, AppPadding.p0, AppPadding.p16),
        hintStyle: getRegularStyle(
            color: ColorManager.neutral400, fontSize: FontSize.s14),
        labelStyle: getMediumStyle(
            color: ColorManager.neutral900, fontSize: FontSize.s14),
        errorStyle: getRegularStyle(color: ColorManager.danger500),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorManager.neutral300,
              width: AppSize.s1,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorManager.primary500,
              width: AppSize.s1,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorManager.danger500,
              width: AppSize.s1,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorManager.primary500,
              width: AppSize.s1,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
      ));
}
