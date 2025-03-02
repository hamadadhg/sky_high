/*
import 'package:flutter/material.dart';

class CustomSnowAnimationSection extends StatelessWidget {
  const CustomSnowAnimationSection({
    super.key,
    required this.acIconPerLine,
    required this.acIconTotal,
    required this.animationController,
  });
  final AnimationController animationController;
  final int acIconTotal;
  final int acIconPerLine;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double acIconSize = size.height * 0.07; //per each icon i want size it is 50
    double horizontalSpacing =
        size.width * 0.25; //horizontal space between all icons
    double verticalSpacing =
        size.height * 0.15; //vertical space between all icons
    return AnimatedBuilder(
      //AnimatedBuilder to listen on change the animationController
      animation: animationController,
      builder: (context, _) {
        return Stack(
          //i use stack instead of any widgets because stack contain on positioned, and i need positioned widget to determined icons position
          children: List.generate(acIconTotal, (index) {
            int row = index ~/ acIconPerLine;
            //this operation tell me this icon where is the line(from 5 lines), and this opeartion(~/) give me integer division(without decimal). example: 0 ~/ 4 = 0 so this icon place it in first line
            int column = index % acIconPerLine;
            //this operation tell me this icon where is the column(from 5 column), and this opeartion(%) give me left number(if left < right) or rest(right - left)(if left > right). example: 0 % 4 = 0 so this icon place it in first line
            double leftPositioned =
                column * horizontalSpacing + size.width * 0.075;
            //this operation put icons from left to right(like you have padding from left so controll how do you want)
            double topPositioned =
                (animationController.value * size.height) -
                (row * verticalSpacing);
            //this operation put icons from top to bottom(like you have padding from top so controll how do you want)
            return Positioned(
              //top to make icon start in top position and in this point(you know it from calculate), left to put all icons horizontal from left to right(like in Row)
              top: topPositioned,
              left: leftPositioned,
              child: Icon(Icons.ac_unit, size: acIconSize),
            );
          }),
        );
      },
    );
  }
}
*/
