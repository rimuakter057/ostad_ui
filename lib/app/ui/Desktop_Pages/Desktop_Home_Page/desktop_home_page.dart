import 'package:flutter/material.dart';
import 'package:ostad_ui/app/utils/all_icon_size.dart';
import 'package:ostad_ui/app/utils/color.dart';
import 'package:ostad_ui/app/utils/images.dart';
import 'package:ostad_ui/app/utils/text_style.dart';

import '../../Widget/class_widget.dart';
import '../../pages/Class_Joining_Page/Widget/button.dart';
import '../../pages/Class_Joining_Page/Widget/container_widget.dart';
import 'Widget/drawer_item.dart';

class DesktopHomePage extends StatelessWidget {
  const DesktopHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    var small = Theme.of(context).textTheme.bodySmall;
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text(
          "Ostad",
          style: MyTextStyle.largeText,
        ),
        actions: [
          Icon(Icons.notification_add,color: Colors.black,),
          SizedBox(width: 5,),
          Icon(Icons.account_circle_rounded,color: Colors.black,)
        ],
      ),
      body: Row(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              alignment: AlignmentDirectional.topStart,
              color: AppColors.whiteColor,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    DrawerItem(
                      size: size,
                      text: 'Class  Joining',
                      icon: Icons.video_call_outlined,
                    ),
                    DrawerItem(size: size, text: "My Courses", icon: Icons.tv),
                    DrawerItem(
                        size: size,
                        text: "Recording",
                        icon: Icons.video_camera_back_outlined),
                    DrawerItem(
                        size: size,
                        text: "Resources",
                        icon: Icons.video_collection_outlined),
                    DrawerItem(
                        size: size,
                        text: "Build My CV",
                        icon: Icons.note_add_outlined)
                  ],
                ),
              ),
            ),
          ),
          Flexible(
              flex: 4,
              child: Container(
                  alignment: AlignmentDirectional.topStart,
                  color: AppColors.whiteColor,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text(
                                "My Courses",
                                style: MyTextStyle.largeText,
                              ),
                              const Spacer(),
                              Row(
                                children: [
                                  ContainerWidget(
                                    small: small,
                                    height: size.height * .04,
                                    width: size.width * .15,
                                    backgroundColor: AppColors.blackColor,
                                    borderColor: Colors.transparent,
                                    text: "All COURSE",
                                    textColor: AppColors.whiteColor,
                                    style: MyTextStyle.smallTextOne.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.whiteColor,
                                      fontSize: 14,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  ContainerWidget(
                                    small: small,
                                    height: size.height * .04,
                                    width: size.width * .15,
                                    backgroundColor: AppColors.greyShade,
                                    borderColor: Colors.transparent,
                                    text: "ONGOING COURSE",
                                    textColor: AppColors.blackColor,
                                    style: MyTextStyle.smallTextOne.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: size.height * .05,
                          ),
                          Container(
                            height: size.height * .13,
                            decoration: BoxDecoration(
                                color: AppColors.greyShade.withOpacity(.3),
                                borderRadius: BorderRadius.circular(5)),
                            child: Row(
                              children: [
                                Container(
                                  height: size.height * .13,
                                  width: size.width * .18,
                                  decoration: BoxDecoration(
                                      color: AppColors.indigoShadeColor
                                          .withOpacity(.3),
                                      borderRadius: BorderRadius.circular(5),
                                      image: const DecorationImage(
                                          image: AssetImage(ImageUrl.batchEight),
                                          fit: BoxFit.cover)),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 30, 10, 10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "App Development With Flutter",
                                        style: MyTextStyle.smallText,
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Row(
                                        children: [
                                          ContainerWidget(
                                            small: small,
                                            height: size.height * .028,
                                            width: size.width * .08,
                                            backgroundColor: AppColors.greyShade,
                                            borderColor: Colors.transparent,
                                            text: "Ongoing",
                                            style: MyTextStyle.smallTextOne
                                                .copyWith(color: Colors.red),
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          ContainerWidget(
                                            small: small,
                                            height: size.height * .028,
                                            width: size.width * .08,
                                            backgroundColor: AppColors.greyShade,
                                            borderColor: Colors.transparent,
                                            text: "Batch-8",
                                            style: MyTextStyle.smallTextOne,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: size.height * .08,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: AppColors.greyShade.withOpacity(.3),
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    color:
                                        AppColors.blackColor.withOpacity(.1))),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 20, 10, 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "রেকমেন্ডেড কোর্সেস",
                                    style: MyTextStyle.largeText,
                                  ),
                                  Text(
                                      "আপনার ক্যারিয়ারের জন্য হেল্পফুল আরো কিছু কোর্স থেকে বেছে নিতে পারেন আপনার পছন্দমতন",
                                      style: MyTextStyle.smallText.copyWith(
                                          fontSize: size.height * .016)),
                                  const Divider(
                                    color: AppColors.orangeColor,
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        "লাইভ কোর্সসমূহ",
                                        style: MyTextStyle.largeText,
                                      ),
                                      const Spacer(),
                                      ContainerWidget(
                                        small: small,
                                        height: size.height * .03,
                                        width: size.width * .1,
                                        backgroundColor: AppColors.greyShade,
                                        borderColor: Colors.transparent,
                                        text: "SEE ALL",
                                        style: MyTextStyle.smallText,
                                      ),
                                    ],
                                  ),
                                 /* Expanded(
                                    child: GridView.builder(
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        physics: NeverScrollableScrollPhysics(),
                                        itemCount: 10,
                                        gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 2,
                                        mainAxisSpacing: 5,
                                          crossAxisSpacing: 5
                                        ),
                                        itemBuilder:(context,index){
                                          Container(
                                            height: size.height*.5,
                                            width: size.width*.5,
                                            decoration: BoxDecoration(
                                                color: Colors.red,
                                                borderRadius: BorderRadius.circular(10)
                                            ),
                                          );
                                        }),
                                  )*/
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ))),
          Flexible(
              flex: 2,
              child: Container(
                alignment: AlignmentDirectional.topStart,
                margin: EdgeInsets.symmetric(horizontal: size.width * .008),
                //  height: size.height * .5,
                width: size.width,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: Colors.black.withOpacity(.1),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Today’s classes (17 November)",
                        style: MyTextStyle.classContainerText
                            .copyWith(color: Colors.black),
                      ),
                      SizedBox(
                        height: size.height * .012,
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              ContainerWidget(
                                small: small,
                                height: size.height * .02,
                                width: size.width * .05,
                                backgroundColor: AppColors.greyShade,
                                borderColor: Colors.transparent,
                                style: MyTextStyle.smallTextOne,
                              ),
                              SizedBox(
                                width: size.width * .015,
                              ),
                              const Text("App Development with Flutter",
                                  style: MyTextStyle.smallTextOne),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: size.height * .012,
                      ),
                      //class container
                      CustomClassWidget(
                        size: size,
                        height: size.height * .17,
                      ),
                      SizedBox(
                        height: size.height * .012,
                      ),
                      CustomClassWidget(
                        size: size,
                        backgroundColor: AppColors.greyShade.withOpacity(.3),
                        height: size.height * .15,
                        name: "Md: Nayeem Ahmed ",
                        topic: "টপিক 11 এর সাপোর্ট ক্লাস",
                        topicStyle: MyTextStyle.classContainerText,
                        nameStyle: MyTextStyle.classContainerText,
                        button: ButtonWidget(
                          medium: small,
                          text: "ভিডিও দেখুন",
                        ),
                      )
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
