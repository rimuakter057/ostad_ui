import 'package:flutter/material.dart';

import '../../../../utils/all_icon_size.dart';
import '../../../../utils/text_style.dart';

class DrawerItem extends StatelessWidget {
  final String text;
  final IconData icon;
  const DrawerItem({
    super.key,
    required this.size, required this.text, required this.icon,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height*.06,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10)),
      child: Row(children: [
        Icon(icon,size: AllIconSize.drawerIcon,),
        SizedBox(width: size.width*.01,),
        Text(text,style: MyTextStyle.smallText,),
      ],
      ),
    );
  }
}