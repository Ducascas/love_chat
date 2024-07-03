import 'package:flutter/material.dart';
import 'package:love_chat/core/style/colors.dart';

abstract class AppTextStyle {
  static const smallWhite = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w300,
    color: AppColors.white,
  );
  static const smallGrey = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w300,
    color: AppColors.grey,
  );

  static const mediumWhite = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w300,
    color: AppColors.white,
  );

  static const mediumGrey = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w300,
    color: AppColors.grey,
  );

  static const mediumThick = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.white,
  );

  static const large = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    color: AppColors.white,
  );

  static const xLarge = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 24,
    color: AppColors.white,
  );
}
