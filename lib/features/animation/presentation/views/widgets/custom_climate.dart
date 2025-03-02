/*
import 'package:flutter/material.dart';
import 'package:sky_high/core/images/asset_image/asset_image.dart';
import 'package:sky_high/core/styles/style_to_texts.dart';

class CustomClimate extends StatelessWidget {
  const CustomClimate({super.key, required this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        GestureDetector(
          onTap: onTap,
          child: Image.asset(
            AssetImages.cloudImage,
            height: height * 0.4,
            fit: BoxFit.cover,
          ),
        ),
        Text(
          'What\'s The Climate',
          textAlign: TextAlign.center,
          style: StyleToTexts.textStyle18.copyWith(fontSize: height * 0.043),
        ),
      ],
    );
  }
}
*/
