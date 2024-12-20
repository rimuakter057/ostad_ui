import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/color.dart';

class ButtonWidget extends StatelessWidget {
  final String? text;
  final Color? textColor;
  final Color? backgroundColor;
  final double? height;
  final double? width;
  final TextStyle ? textStyle;
  final Text? buttonText;

  const ButtonWidget({
    super.key,
    required this.medium,
    this.text,
    this.textColor,
    this.backgroundColor,
    this.height,
    this.width, this.textStyle, this.buttonText,
  });

  final TextStyle? medium;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height:height?? Get.height * .05,
        width:width?? Get.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: backgroundColor ?? AppColors.blackColor,
        ),
        child: Center(
            child:buttonText?? Text(
          text ?? "JOIN CLASS",
          style:textStyle?? medium?.copyWith(color:textColor?? Colors.white),
        )),
      ),
    );
  }
}
