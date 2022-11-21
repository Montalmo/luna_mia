import 'package:flutter/material.dart';
import 'package:luna_mia/strings.dart';

abstract class AppColors {
  static const Color cWhiteColor = Color(0xFFFFFFFF);
  static const Color cYelowColor = Color(0xFFFFF3B2);
  static const Color cBlueColor = Color(0xFF6BB8E2);
  static const Color cLightBlueColor = Color(0xFFE5F6FF);
  static const Color cLighGrayColor = Color(0xFFF6F6F6);
  static const Color cGrayColor = Color(0xFFC4C4C4);
  static const Color cDarkGrayColor = Color(0xFF787878);
  static const Color cBlackColor = Color(0xFF444444);
  static const Color cRedColor = Color(0xFFFF8A8A);
}

abstract class AppTextStyle {
  static const TextStyle h1Title = TextStyle(
      fontFamily: AppStrings.appFontFamily,
      fontSize: 28.0,
      fontWeight: FontWeight.w500,
      color: AppColors.cBlackColor);
  static const TextStyle h2Title = TextStyle(
      fontFamily: AppStrings.appFontFamily,
      fontSize: 22.0,
      fontWeight: FontWeight.w500,
      color: AppColors.cBlackColor);
  static const TextStyle h2TitlePrice = TextStyle(
      fontFamily: AppStrings.appFontFamily,
      fontSize: 22.0,
      fontWeight: FontWeight.w800,
      color: AppColors.cBlueColor);
  static const TextStyle h3Title = TextStyle(
      fontFamily: AppStrings.appFontFamily,
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: AppColors.cBlackColor);
  static const TextStyle h3TitleWhite = TextStyle(
      fontFamily: AppStrings.appFontFamily,
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: AppColors.cWhiteColor);
  static const TextStyle h4Body = TextStyle(
      fontFamily: AppStrings.appFontFamily,
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: AppColors.cBlackColor);
  static const TextStyle h4BodyBlue = TextStyle(
      fontFamily: AppStrings.appFontFamily,
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: AppColors.cBlueColor);
  static const TextStyle hFlagText = TextStyle(
      fontFamily: AppStrings.appFontFamily,
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
      color: AppColors.cWhiteColor);
  static const TextStyle hTitleText = TextStyle(
      fontFamily: AppStrings.appFontFamily,
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
      color: AppColors.cBlackColor);
  static const TextStyle h5SubTitle = TextStyle(
      fontFamily: AppStrings.appFontFamily,
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      color: AppColors.cDarkGrayColor,
      decoration: TextDecoration.lineThrough);
  static const TextStyle h5SubTitleText = TextStyle(
    fontFamily: AppStrings.appFontFamily,
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
    color: AppColors.cDarkGrayColor,
  );
}


