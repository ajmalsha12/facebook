import 'package:facebook/color_const.dart';
import 'package:facebook/image_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'main.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  List notifi = [
    {
      "image": ImageConst.np1,
      "text1": "Darrell Trivedi has a new story  up.\n"
          " What’s your reaction?",
      "text2": "2 hours ago",
      "icon": ImageConst.dot
    },
    {
      "image": ImageConst.np2,
      "text1": "Darrell Trivedi has a new story  up.\n"
          " What’s your reaction?",
      "text2": "2 hours ago",
      "icon": ImageConst.dot,
    },
    {
      "image": ImageConst.chetan,
      "text1": "Darrell Trivedi has a new story  up.\n"
          " What’s your reaction?",
      "text2": "2 hours ago",
      "icon": ImageConst.dot,
    },
    {
      "image": ImageConst.np3,
      "text1": "Darrell Trivedi has a new story  up.\n"
          " What’s your reaction?",
      "text2": "2 hours ago",
      "icon": ImageConst.dot,
    },
    {
      "image": ImageConst.np4,
      "text1": "Darrell Trivedi has a new story  up.\n"
          " What’s your reaction?",
      "text2": "2 hours ago",
      "icon": ImageConst.dot,
    },
    {
      "image": ImageConst.np5,
      "text1": "Darrell Trivedi has a new story  up.\n"
          " What’s your reaction?",
      "text2": "2 hours ago",
      "icon": ImageConst.dot
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(w*0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Notifications",
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: w*0.05),),
                  SvgPicture.asset(ImageConst.find,
                  color: ColorConst.secandarycolor,)
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(w*0.000000001),
              child: Row(
                children: [
                  Container(
                    width: w*0.99,
                    height: w*0.06,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              ColorConst.lightprimaryColor,
                              ColorConst.lightsecondaryColor
                            ]
                        )
                    ),
                    child: Text("New",
                      style: TextStyle(fontSize: w*0.04,
                          fontWeight: FontWeight.bold,),),
                  )
                ],
              ),
            ),
            Container(
              height: w*1.2,
              width: w*1,

              child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      height: w*0.2,
                      width: w*0.33,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                ColorConst.lightprimaryColor,
                                ColorConst.lightsecondaryColor
                              ]
                          )
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Image.asset(notifi[index]["image"]),
                            title: Row(
                              children: [
                                Text(
                                  notifi[index]["text1"],
                                  style: TextStyle(
                                      fontSize: w*0.03,
                                      fontWeight: FontWeight.w600
                                  ),
                                )
                              ],
                            ),
                            subtitle: Row(
                              children: [
                                Text(
                                  notifi[index]["text2"],
                                  style: TextStyle(fontSize: w*0.03),
                                )
                              ],
                            ),
                            trailing: PopupMenuButton(
                              itemBuilder: (context) {
                                return[];
                              },
                            ),
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(width: w*0.03,
                    );
                  },
                  itemCount: notifi.length),
            ),
            Padding(
              padding: EdgeInsets.all(w*0.00001),
              child: Row(
                children: [
                  Container(
                    width: w*0.99,
                    height: w*0.06,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              ColorConst.lightprimaryColor,
                              ColorConst.lightsecondaryColor
                            ]
                        )
                    ),
                    child: Text("Earlier",
                      style: TextStyle(fontSize: w*0.04,
                          fontWeight: FontWeight.bold),),
                  )
                ],
              ),
            ),
            Container(
              height: w*1.2,
              width: w*1,
              child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      height: w*0.2,
                      width: w*0.33,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                ColorConst.lightprimaryColor,
                                ColorConst.lightsecondaryColor
                              ]
                          )
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Image.asset(notifi[index]["image"]),
                            title: Row(
                              children: [
                                Text(
                                  notifi[index]["text1"],
                                  style: TextStyle(
                                      fontSize: w*0.03,
                                      fontWeight: FontWeight.w600
                                  ),
                                )
                              ],
                            ),
                            subtitle: Row(
                              children: [
                                Text(
                                  notifi[index]["text2"],
                                  style: TextStyle(fontSize: w*0.03),
                                )
                              ],
                            ),
                            trailing: PopupMenuButton(
                              itemBuilder: (context) {
                                return[];
                              },
                            ),
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(width: w*0.03,
                    );
                  },
                  itemCount: notifi.length),
            ),

          ],
        ),
      ),

    );
  }
}
