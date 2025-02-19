import 'package:get/get.dart';
import 'package:ostad_ui/app/routes/routes_name.dart';
import 'package:ostad_ui/app/ui/Desktop_Pages/Desktop_Home_Page/desktop_home_page.dart';
import 'package:ostad_ui/app/ui/ResponsivePage.dart';
import 'package:ostad_ui/app/ui/pages/Class_Joining_Page/class_joining_page.dart';
import 'package:ostad_ui/app/ui/pages/HomePage/home_page.dart';
class RoutesPage {
  List <GetPage<dynamic>> routes =[
    GetPage(name: RoutesName.classJoiningPage,
        page:()=>ClassJoiningPage()),
    GetPage(name: RoutesName.homePage, page:()=>HomePage()),
     GetPage(name: RoutesName.desktopHomePage, page:()=>DesktopHomePage()),
    GetPage(name: RoutesName.responsivePage, page:()=>ResponsivePage() )
  ];
}