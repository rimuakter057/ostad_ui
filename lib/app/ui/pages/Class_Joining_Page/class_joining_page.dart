import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ostad_ui/app/controller/support_class_controller.dart';
import 'package:ostad_ui/app/utils/color.dart';
import 'Widget/bottom_container.dart';
import 'Widget/button.dart';
import 'Widget/container_widget.dart';

class ClassJoiningPage extends StatelessWidget {
  const ClassJoiningPage({super.key});

  @override
  Widget build(BuildContext context) {
    var medium = Theme.of(context).textTheme.bodyMedium;
    var small = Theme.of(context).textTheme.bodySmall;
    var height = Get.height;
    var width = Get.width;
    final controller = Get.put(SupportClassController());
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Get.bottomSheet(Container(
                height: Get.height * .37,
                width: Get.width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  color: AppColors.whiteColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Card(
                        elevation: 5,
                        shadowColor: Colors.black,
                        child: ListTile(
                          leading: Container(
                            height: height * .05,
                            width: width * .1,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.orangeShadeColor,
                            ),
                            child: const Center(
                                child: Icon(
                              Icons.account_circle_outlined,
                              color: Colors.black,
                            )),
                          ),
                          title: Text(
                            "Rimu Akter",
                            style: medium,
                          ),
                          subtitle: Text(
                            "880177**3205*",
                            style: small?.copyWith(
                                color: AppColors.blackColor.withOpacity(.5)),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 3,bottom: 3),
                        height: height * .15,
                        width: width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: AppColors.blackColor.withOpacity(.1)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 10),
                          child: Column(
                            children: [
                              BottomContainer(
                                  height: height, width: width, medium: medium),
                              BottomContainer(
                                height: height,
                                width: width,
                                medium: medium,
                                text: "Go to Class Joining",
                                icon: Icons.video_call_outlined,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                        ButtonWidget(medium:medium,
                        text: "PROFILE",
                          textColor: Colors.black,
                          height: height * .04,
                          width: width*.4,
                          backgroundColor: AppColors.blackColor.withOpacity(.1),
                        ),
                        ButtonWidget(medium:medium,
                          text: "LOGOUT",
                          textColor: Colors.black,
                          height: height * .04,
                          width: width*.4,
                          backgroundColor: AppColors.blackColor.withOpacity(.1),
                        ),
                      ],)
                    ],
                  ),
                ),
              ));
            },
            style: IconButton.styleFrom(
                backgroundColor: AppColors.orangeShadeColor),
            icon: const Icon(
              Icons.account_circle_outlined,
              color: Colors.black,
            )),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Good Afternoon",
              style: small?.copyWith(color: Colors.black45),
            ),
            Text(
              "Rimu Akter",
              style: small?.copyWith(color: Colors.black),
            ),
          ],
        ),
        titleSpacing: 0,
        actions: [
          Container(
            height: height * .04,
            width: width * .2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black.withOpacity(.1),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  const Icon(
                    Icons.search,
                    size: 15,
                  ),
                  Text(
                    "search",
                    style: small?.copyWith(
                      color: AppColors.blackColor,
                      fontSize: height * .015,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: width * .03,
          ),
          Container(
              height: height * .04,
              width: width * .12,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black.withOpacity(.1),
              ),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 2,
                    right: 8,
                    child: Icon(
                      Icons.notification_important_outlined,
                    ),
                  ),
                  Positioned(
                    right: 1,
                    child: Container(
                      height: height * .02,
                      width: width * .05,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: AppColors.orangeColor),
                      child: Text(
                        textAlign: TextAlign.center,
                        "5",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "App Development",
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: Get.height * .033,
                            fontWeight: FontWeight.w700,
                            color: AppColors.blackColor.withOpacity(.7),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: Get.height * .04,
                          width: Get.width * .13,
                          decoration: BoxDecoration(
                            color: AppColors.orangeShadeColor,
                            border: Border.all(color: AppColors.yellowColor),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Center(
                              child: Icon(
                            Icons.check_box_outlined,
                          )),
                        ),
                      )
                    ],
                  ),
                  Text(
                    "Class Schedule of Module 8",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: Get.height * .022,
                        fontWeight: FontWeight.w600,
                        color: AppColors.blackColor.withOpacity(.6),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * .02,
                  ),
                  Row(
                    children: [
                      ContainerWidget(small: small),
                      SizedBox(
                        width: Get.width * .05,
                      ),
                      ContainerWidget(
                        small: small,
                        text: "BATCH-8",
                        textColor: AppColors.blackColor,
                        backgroundColor: AppColors.greenShadeColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
                width: width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.indigoShadeColor),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.support,
                            color: Colors.pinkAccent,
                            size: 30,
                          ),
                          SizedBox(
                            width: width * .03,
                          ),
                          Text(
                            "Support Class",
                            style:
                                medium?.copyWith(fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * .03,
                      ),
                      ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: controller.supportClassList.length,
                          itemBuilder: (context, index) {
                            var getData = controller.supportClassList[index];
                            return Container(
                              margin: EdgeInsets.only(
                                top: height * .01,
                                bottom: height * .01,
                              ),
                              height: height * .22,
                              width: width,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: Colors.black.withOpacity(.1)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Topic: ${getData.topic}",
                                      style: medium,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Instructor:",
                                          style: medium?.copyWith(
                                              color: AppColors.blackColor
                                                  .withOpacity(.5)),
                                        ),
                                        SizedBox(
                                          width: width * .04,
                                        ),
                                   CircleAvatar(
                                          radius: 20,
                                          backgroundImage: AssetImage(getData.image),
                                        ),
                                        SizedBox(
                                          width: width * .04,
                                        ),
                                        Text(getData.name, style: medium),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.backup_table_outlined,
                                              color: AppColors.orangeColor,
                                              size: 17,
                                            ),
                                            Text(getData.date, style: small),
                                          ],
                                        ),
                                        SizedBox(
                                          width: width * .05,
                                        ),
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.alarm,
                                              color: AppColors.orangeColor,
                                            ),
                                            Text(getData.time, style: small),
                                          ],
                                        ),
                                      ],
                                    ),
                                    ButtonWidget(
                                      medium: medium,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
