import 'package:flutter/material.dart';

import '../../utils/color.dart';
import '../../utils/text_style.dart';
import '../pages/Class_Joining_Page/Widget/button.dart';

class CustomClassWidget extends StatelessWidget {
  final String?name;
  final String?topic;
  final Color? textColor;
  final Color? backgroundColor;
  final double? height;
  final double?width;
  final TextStyle? topicStyle;
  final TextStyle? nameStyle;
  final TextStyle? buttonTxt;
  final Widget? button;
  const CustomClassWidget({
    super.key,
    required this.size, this.name, this.textColor,  this.height, this.width, this.topicStyle, this.topic, this.backgroundColor, this.nameStyle, this.buttonTxt, this.button,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height:height?? size.height * .22,
      width:width?? size.width,
      decoration: BoxDecoration(
        color:backgroundColor?? Colors.black,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.black.withOpacity(.1)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
             name?? "Instructor:Nayeem Ahmed",
              style:nameStyle?? MyTextStyle.classContainerText
                  .copyWith(color: Colors.white),
            ),
            Text(
             topic?? "টপিক 11 এর সাপোর্ট ক্লাস",
              style:topicStyle?? MyTextStyle.classContainerText
                  .copyWith(color: Colors.white),
            ),

      button??ButtonWidget(medium: null,
              backgroundColor: AppColors.yellowColor,
              buttonText: Text("ক্লাস চলছে জয়েন করুন"), textStyle: MyTextStyle.smallText,
            ),
          ],
        ),
      ),
    );
  }
}