/*
import 'package:flutter/material.dart';
import 'package:sky_high/core/constant/duration_constant.dart';
import 'package:sky_high/core/styles/style_to_colors.dart';
import 'package:sky_high/core/styles/style_to_texts.dart';

void snackBarHelper({required BuildContext context, required String text}) {
  double height = MediaQuery.of(context).size.height;
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: StyleToColors.redColor,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(height * 0.015),
      ),
      duration: kSevenSeconds,
      content: Text(
        text,
        style: StyleToTexts.textStyle16.copyWith(fontSize: height * 0.022),
      ),
      action: SnackBarAction(
        label: 'OK',
        textColor: StyleToColors.whiteColor,
        onPressed: () {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
        },
      ),
    ),
  );
}
*/
