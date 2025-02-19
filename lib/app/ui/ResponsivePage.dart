import 'package:flutter/material.dart';
import 'package:ostad_ui/app/ui/Desktop_Pages/Desktop_Home_Page/desktop_home_page.dart';
import 'package:ostad_ui/app/ui/pages/Class_Joining_Page/class_joining_page.dart';

class ResponsivePage extends StatelessWidget {
  const ResponsivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (BuildContext context, BoxConstraints contraints)
      {
        if (contraints.maxWidth>=1024){
          return const DesktopHomePage();
        }
      return const ClassJoiningPage();
      }),
    );
  }
}
