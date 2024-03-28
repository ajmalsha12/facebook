import 'package:facebook/Profil_Login.dart';
import 'package:facebook/color_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'image_const.dart';
import 'main.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  bool clear = false;
  bool get = false;
  bool clear1 = false;
  List menu = [
    {
      "Text": "jobs",
      "image1": ImageConst.menu1,
    },
    {
      "Text": "COVID-19 information Center",
      "image1": ImageConst.menu2,
    },
    {
      "Text": "Marketplace",
      "image1": ImageConst.menu3,
    },
    {
      "Text": "Freinds",
      "image1": ImageConst.menu4,
    },
    {
      "Text": "Event",
      "image1": ImageConst.menu5,
    },
    {
      "Text": "Gamig",
      "image1": ImageConst.menu6,
    },
    {
      "Text": "Weather",
      "image1": ImageConst.menu7,
    },
    {
      "Text": "Saved",
      "image1": ImageConst.menu8,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(w * 0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Menu",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: w * 0.05),
                  ),
                  SvgPicture.asset(ImageConst.search)
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(w * 0.03),
              child: Row(
                children: [
                  Text(
                    "Shortcuts",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            Container(
              width: w * 0.9,
              height: w * 0.6,
              child: ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Container(
                      width: w * 0.9,
                      height: w * 0.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(w * 0.04),
                          border: Border.all(color: ColorConst.primaryColor)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            menu[index]["Text"],
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w800,
                                color: ColorConst.primaryColor),
                          ),
                          SvgPicture.asset(menu[index]["image1"])
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: w * 0.02,
                    );
                  },
                  itemCount: menu.length),
            ),
            SizedBox(height: w * 0.03),
            Column(children: [
              clear1 == false
                  ? InkWell(
                      onTap: () {
                        setState(() {
                          clear = true;
                          get = false;
                          clear1 = true;
                        });
                      },
                      child: Container(
                        width: w * 0.9,
                        height: w * 0.1,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(w * 0.04),
                            border: Border.all(color: ColorConst.thirdcolor)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "See less",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  : InkWell(
                      onTap: () {
                        setState(() {
                          clear = false;
                          get = true;
                          clear1 = false;
                        });
                      },
                      child: Container(
                        width: w * 0.9,
                        height: w * 0.1,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(w * 0.04),
                            border: Border.all(color: ColorConst.thirdcolor)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "See more",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                    ),
              clear1 == false
                  ? Column(
                      children: [
                        Container(
                          height: w * 0.1,
                          width: w * 0.45,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Community resources",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  // color: ColourConstant.primaryColor
                                ),
                              ),
                              SizedBox(width: w * 0.02),
                              SvgPicture.asset(ImageConst.menu9)
                            ],
                          ),
                        ),
                        Divider(
                          color: ColorConst.secandarycolor,
                        ),
                        Container(
                          width: w * 0.9,
                          height: w * 0.1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Help & Support",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: ColorConst.secandarycolor),
                              ),
                              SizedBox(width: w * 0.02),
                              SvgPicture.asset(ImageConst.menu10)
                            ],
                          ),
                        ),
                        Divider(
                          color: ColorConst.thirdcolor,
                        ),
                        Container(
                          width: w * 0.9,
                          height: w * 0.1,
                          // decoration: BoxDecoration(
                          //   borderRadius: BorderRadius.circular(width*0.04),
                          //    border: Border.all(color: ColourConstant.thirdColor)
                          // ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Settings & Privacy",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: ColorConst.secandarycolor),
                              ),
                              SizedBox(width: w * 0.02),
                              SvgPicture.asset(ImageConst.menu11)
                            ],
                          ),
                        ),
                        Divider(
                          color: ColorConst.thirdcolor,
                        ),
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              anchorPoint: Offset(2, 5),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(w * 0.05)),
                              builder: (context) {
                                return Container(
                                  height: w * 0.6,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.circular(w * 0.05)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Center(
                                        child: Text(
                                            "Are you sure you want to log out?",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600)),
                                      ),
                                      SizedBox(
                                        height: w * 0.05,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.pushAndRemoveUntil(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    Profil_Login(),
                                              ),
                                              (route) => false);
                                        },
                                        child: Container(
                                          height: w * 0.1,
                                          width: w * 0.8,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      w * 0.03),
                                              gradient: LinearGradient(colors: [
                                                ColorConst.primaryColor,
                                                ColorConst.fivecolor
                                              ])),
                                          child: Center(
                                              child: Text(
                                            "YES",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white),
                                          )),
                                        ),
                                      ),
                                      SizedBox(
                                        height: w * 0.05,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          height: w * 0.1,
                                          width: w * 0.8,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      w * 0.03),
                                              gradient: LinearGradient(colors: [
                                                ColorConst.primaryColor,
                                                ColorConst.fivecolor
                                              ])),
                                          child: Center(
                                              child: Text(
                                            "NO",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white),
                                          )),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                          child: Container(
                            width: w * 0.9,
                            height: w * 0.1,
                            // decoration: BoxDecoration(
                            //   borderRadius: BorderRadius.circular(width*0.04),
                            //    border: Border.all(color: ColourConstant.thirdColor)
                            // ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "log out",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.red),
                                ),
                                SizedBox(width: w * 0.02),
                                Icon(
                                  Icons.logout,
                                  color: Colors.red,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  : SizedBox()
            ])
          ],
        ),
      ),
    );
  }
}
