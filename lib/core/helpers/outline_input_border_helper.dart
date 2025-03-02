import 'package:flutter/material.dart';
import 'package:sky_high/core/styles/style_to_colors.dart';

OutlineInputBorder outlineInputBorderHelper({required double height}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(height * 0.02),
    borderSide: const BorderSide(color: StyleToColors.whiteColor, width: 1.5),
    //width like bure or obacity to border color
    //yes i use dark mode but i need to white color to border color in TextField
  );
}
