import 'package:flutter/material.dart';
import '../res/dimens.dart';

class AppButtonStyles {
  AppButtonStyles._();

  static ButtonStyle mainButtonStyle = ButtonStyle(
      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimens.medium))));
}
