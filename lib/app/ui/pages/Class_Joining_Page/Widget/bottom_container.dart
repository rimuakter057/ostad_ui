import 'package:flutter/material.dart';

import '../../../../utils/color.dart';

class BottomContainer extends StatelessWidget {
  final IconData? icon;
  final String? text;
  const BottomContainer({
    super.key,
    required this.height,
    required this.width,
    required this.medium, this.icon, this.text,
  });

  final double height;
  final double width;
  final TextStyle? medium;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5,),
      height: height*.055,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: AppColors.whiteColor
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(icon??Icons.verified_outlined,color: Colors.black,size: height*.03,),
            Text(text??"Get Verified",style: medium),
            Icon(Icons.arrow_forward,color: Colors.black,size: height*.03,),
          ],),
      ),
    );
  }
}