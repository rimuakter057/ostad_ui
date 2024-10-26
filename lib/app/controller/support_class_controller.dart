import 'package:get/get.dart';
import 'package:ostad_ui/app/model/support_class_model.dart';

class SupportClassController extends GetxController {
  RxList<SupportClassModel> supportClassList = <SupportClassModel>[
    SupportClassModel(
        topic: "মডিউল ৮ এর সাপোর্ট ক্লাস",
        name: "Hassan",
        image: "assets/images/hassan.jpg",
        date: " Saturday, 26 October",
        time: " 7:00 PM"),
    SupportClassModel(
        topic: "মডিউল ৮ এর সাপোর্ট ক্লাস",
        name: "Md Nayeem Ahmed",
        image: "assets/images/nayem.jpg",
        date: " Saturday, 26 October",
        time: " 9:00 PM"),
    SupportClassModel(
        topic: "মডিউল ৮ এর সাপোর্ট ক্লাস",
        name: "Hassan",
        image: "assets/images/hassan.jpg",
        date: " Saturday, 27 October",
        time: " 7:00PM"),
    SupportClassModel(
        topic: "মডিউল ৮ এর সাপোর্ট ক্লাস",
        name: "Md Nayeem Ahmed",
        image: "assets/images/nayem.jpg",
        date: " Saturday, 27 October",
        time: " 9:00 PM"),
    SupportClassModel(
        topic: "মডিউল ৯ এর সাপোর্ট ক্লাস",
        name: "Hassan",
        image: "assets/images/hassan.jpg",
        date: " Saturday, 2 November",
        time: " 7:00PM"),
    SupportClassModel(
        topic: "মডিউল ৯ এর সাপোর্ট ক্লাস",
        name: "Md Nayeem Ahmed",
        image: "assets/images/nayem.jpg",
        date: " Saturday, 2 November",
        time: " 9:00 PM"),
  ].obs;
}
