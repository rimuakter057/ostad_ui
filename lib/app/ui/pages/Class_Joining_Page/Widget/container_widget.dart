
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/color.dart';
class ContainerWidget extends StatelessWidget {
  final String?text;
  final Color? textColor;
  final Color? backgroundColor;
  final Color? borderColor;
  final double? height;
  final double?width;
  final TextStyle? style;

  const ContainerWidget({
    super.key,
    required this.small, this.text, this.textColor, this.backgroundColor, this.borderColor, this.height, this.width, this.style,
  });

  final TextStyle? small;

  @override
  Widget build(BuildContext context) {
    return Container(
      height:height?? Get.height * .04,
      width:width?? Get.width * .25,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color:backgroundColor??AppColors.greenColor,
          border: Border.all(color:borderColor?? AppColors.greenColor)),
      child: Center(
          child: Text(
            textAlign: TextAlign.center,
            text??
            "Module 8",
            style:style?? small?.copyWith(color:textColor??AppColors.whiteColor),
          )),
    );
  }
}