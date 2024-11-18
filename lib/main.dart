import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:ostad_ui/app/routes/routes_name.dart';
import 'package:ostad_ui/app/routes/routes_page.dart';

import 'app/utils/color.dart';

void main() {
  runApp(const  OstadUi());
}

class OstadUi extends StatelessWidget {
  const  OstadUi({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      textTheme: TextTheme(
        bodyMedium:TextStyle(
            fontFamily: "Ubuntu",
            color: AppColors.blackColor,
            fontSize: MediaQuery.sizeOf(context).height*.023,
            fontWeight: FontWeight.w500
        ),
        bodySmall: TextStyle(
            fontFamily: "poppins",
            color: AppColors.orangeColor,
            fontSize: MediaQuery.sizeOf(context).height*.02,
            fontWeight: FontWeight.w400
        ),
      )
    ),
    getPages: RoutesPage().routes,
      initialRoute: RoutesName.responsivePage,
    );
  }
}


