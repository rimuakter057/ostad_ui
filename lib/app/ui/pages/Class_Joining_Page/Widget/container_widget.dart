
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/color.dart';
class ContainerWidget extends StatelessWidget {
  final String?text;
  final Color? textColor;
  final Color? backgroundColor;
  final Color? borderColor;

  const ContainerWidget({
    super.key,
    required this.small, this.text, this.textColor, this.backgroundColor, this.borderColor,
  });

  final TextStyle? small;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * .04,
      width: Get.width * .25,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color:backgroundColor??AppColors.greenColor,
          border: Border.all(color:borderColor?? AppColors.greenColor)),
      child: Center(
          child: Text(text??
            "Module 8",
            style: small?.copyWith(color:textColor??AppColors.whiteColor),
          )),
    );
  }
}