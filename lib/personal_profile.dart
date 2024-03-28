import 'dart:io';

import 'package:facebook/color_const.dart';
import 'package:facebook/image_const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';

import 'main.dart';

class personal_profile extends StatefulWidget {
  const personal_profile({super.key});

  @override
  State<personal_profile> createState() => _personal_profileState();
}

class _personal_profileState extends State<personal_profile> {
  bool clear1= true;
  List listtile = [
    {
      "list": ImageConst.sanjay,
      "text1": "Sanjay Shendy",
      "text2": "1d",
      "icon": ImageConst.earth,
      "text3": "You never been expected like as your friend can be look as\n"
          " much cute in specific costume, and suddenly if you have \n"
          " seen his picture on Facebook, then probably your comment \n"
          " on photo can be like as. “Cuteness overloaded!”. ",
      "car": ImageConst.post3,
      "icon2": ImageConst.like1,
      "icon2.5":ImageConst.bluelike,
      "icon3": ImageConst.ms,
      "icon4": ImageConst.cm,
      "text4": "1k",
      "text5": "400 Comments . 270 Shares ",
    },
    {
      "list": ImageConst.sanjay,
      "text1": "Sanjay Shendy",
      "text2": "10 h",
      "icon": ImageConst.earth,
      "text3": "You never been expected like as  your friend can be look as \n"
          "much cute in specific costume, and suddenly if you have \n"
          " seen his picture on Facebook, then probably your comment \n "
          "on photo can be like as. “Cuteness overloaded!”. ",
      "car": ImageConst.post4,
      "icon2": ImageConst.like1,
      "icon2.5":ImageConst.bluelike,
      "icon3": ImageConst.ms,
      "icon4": ImageConst.cm,
      "text4": "1k",
      "text5": "400 Comments . 270 Shares ",
    },
  ];
 List Like =[];
 List<int>like =[];
 var file;
  Future<void> pickimage(ImageSource a) async {
    ImagePicker imagePicker = ImagePicker();
    final imamefile = await imagePicker.pickImage(source: a);
    file = File(imamefile!.path);
    if (mounted) {
      file = File(imamefile.path);
      setState(() {});
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(children: [
        Stack(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: w * 0.62,
                      width: w * 1,
                      child: Image.asset(
                        ImageConst.bg,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: w * 0.53, left: w * 0.83),
                      child: SvgPicture.asset(ImageConst.camera),
                    )
                  ],
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: w * 0.35, left: w * 0.30),
              child: Stack(
                children: [
                  Container(
                    height: w * 0.41,
                    width: w * 0.41,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(w * 0.075),
                        color: ColorConst.fivecolor),
                    child: Center(
                      child: file==null? Container(
                        height: w * 0.4,
                        width: w * 0.4,
                        child: Image.asset(
                          ImageConst.sanjay,
                          fit: BoxFit.fill,
                        ),
                      ):
                      Container(
                        height: w * 0.4,
                        width: w * 0.4,
                        decoration: BoxDecoration(
                            image: DecorationImage(image:  FileImage(file),
                              fit: BoxFit.fill,),
                            borderRadius: BorderRadius.circular(w*0.07)
                        ),

                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: w * 0.3, left: w * 0.3),
                    child: SvgPicture.asset(ImageConst.camera),
                  )
                ],
              ),
            )
          ],
        ),
        Text(
          "Sanjay Shendy",
          style: TextStyle(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: w * 0.1,
              width: w * 0.4,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [ColorConst.primaryColor, ColorConst.fourthcolor]),
                borderRadius: BorderRadius.circular(w * 0.03),
              ),
              child: Center(
                child: Text(
                  "Add to Story",
                  style: TextStyle(
                      color: ColorConst.fivecolor,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Choose a file from?"),
                      actions: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                pickimage(ImageSource.camera);

                              },
                              child: Container(
                                width: w * 0.15,
                                height: w * 0.10,
                                child: Center(
                                    child: Icon(Icons.camera_alt_rounded)),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                    ColorConst.primaryColor,
                                    ColorConst.fourthcolor
                                  ]) ,
                                  borderRadius: BorderRadius.circular(w * 0.02),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                pickimage(ImageSource.gallery);

                              },
                              child: Container(
                                width: w * 0.15,
                                height: w * 0.10,
                                child:
                                Center(child: Icon(CupertinoIcons.photo)),
                                decoration: BoxDecoration(
                                  gradient:   LinearGradient(colors: [
                                    ColorConst.primaryColor,
                                    ColorConst.fourthcolor
                                  ]) ,
                                  borderRadius: BorderRadius.circular(w * 0.02),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                );
              },
              child: Container(
                height: w * 0.1,
                width: w * 0.4,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(w * 0.03),
                ),
                child: Center(
                  child: Text(
                    "Edit profile",
                    style: TextStyle(
                      color: ColorConst.secandarycolor,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),
            PopupMenuButton(
              itemBuilder: (context) {
                return [];
              },
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(w * 0.03),
          child: Row(
            children: [
              SvgPicture.asset(ImageConst.lock),
              SizedBox(
                width: w * 0.03,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Learn more",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: ColorConst.primaryColor,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        Divider(
          thickness: 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text("Posts",
                    style: TextStyle(
                        color: ColorConst.primaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 18)),
                Text(
                  "1972",
                  style: TextStyle(
                      color: ColorConst.primaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                )
              ],
            ),
            Column(
              children: [
                Text("Friends",
                    style: TextStyle(
                        color: ColorConst.primaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 18)),
                Text(
                  "4843",
                  style: TextStyle(
                      color: ColorConst.primaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                )
              ],
            ),
            Column(
              children: [
                Text("Followers",
                    style: TextStyle(
                        color: ColorConst.primaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 18)),
                Text(
                  "1990",
                  style: TextStyle(
                      color: ColorConst.primaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                )
              ],
            ),
            Column(
              children: [
                Text("Following",
                    style: TextStyle(
                        color: ColorConst.primaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 18)),
                Text(
                  "1456",
                  style: TextStyle(
                      color: ColorConst.primaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                )
              ],
            )
          ],
        ),
        Divider(
          thickness: 2,
        ),
      clear1?  Padding(
          padding: EdgeInsets.all(w * 0.04),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(ImageConst.founder, height: w * 0.06),
                  Text("Founder and CEO at"),
                  Text(
                    "A to Z company Ltd",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                children: [
                  Image.asset(ImageConst.studide, height: w * 0.06),
                  Text("hat-svgrepo-com.svg"),
                  Text(
                    "Harvard University",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                children: [
                  Image.asset(ImageConst.home2, height: w * 0.06),
                  Text("lives in"),
                  Text(
                    "Mumbai,Maharastra",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                children: [
                  Image.asset(ImageConst.location, height: w * 0.06),
                  Text("From"),
                  Text(
                    "Mumbai,India",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                children: [
                  Image.asset(ImageConst.dot, height: w * 0.009),
                  Text("See your about info"),
                ],
              )
            ],
          ),
        ):
        Padding(
          padding:  EdgeInsets.all(w*0.04),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(ImageConst.location, height: w * 0.06),
                  Text("From"),
                  Text(
                    "Mumbai,India",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                children: [
                  Image.asset(ImageConst.dot, height: w * 0.009),
                  Text("See your about info"),
                ],
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: w * 0.08,
              width: w * 0.38,
              child: Center(
                child: Text(
                  "Edit public details",
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(w * 0.03),
                color: ColorConst.thirdcolor,
              ),
            ),
          ],
        ),
        Divider(
          thickness: 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("1478 friends posted on your "),
            Text(
              "timeline",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text("for your birthday")
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap:() {
                clear1=!clear1;
                setState(() {

                });
              },
              child:clear1==true? Container(
                height: w * 0.08,
                width: w * 0.38,
                child: Center(
                  child: Text("Sell less",style: TextStyle(
                    color: ColorConst.fivecolor,
                  ),),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(w * 0.03),
                    gradient: LinearGradient(
                      colors: [
                        ColorConst.primaryColor,
                        ColorConst.fourthcolor,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    )),
              ):
              Container(
                height: w * 0.08,
                width: w * 0.38,
                child: Center(
                  child: Text(
                    "See All",
                    style: TextStyle(color: ColorConst.fivecolor),
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(w * 0.03),
                    gradient: LinearGradient(
                      colors: [
                        ColorConst.primaryColor,
                        ColorConst.fourthcolor,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    )),
              ),
            )
          ],
        ),
        Divider(
          thickness: 2,
        ),
        Container(
          height: w * 2.4,
          width: w * 1,
          color: ColorConst.thirdcolor,
          child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  height: w * 1.20,
                  width: w * 0.35,
                  color: ColorConst.fivecolor,
                  child: Column(
                    children: [
                      ListTile(
                          leading: Image.asset(listtile[index]["list"]),
                          title: Text(
                            listtile[index]["text1"],
                            style: TextStyle(
                                fontSize: w * 0.03,
                                fontWeight: FontWeight.w600),
                          ),
                          subtitle: Row(
                            children: [
                              Text(
                                listtile[index]["text2"],
                                style: TextStyle(fontSize: w * 0.03),
                              ),
                              SvgPicture.asset(listtile[index]["icon"])
                            ],
                          ),
                          trailing: PopupMenuButton(
                            itemBuilder: (context) {
                              return [];
                            },
                          )),
                      Padding(
                        padding: EdgeInsets.all(w * 0.03),
                        child: Row(
                          children: [
                            Text(
                              listtile[index]["text3"],
                              style: TextStyle(fontSize: w * 0.030),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Image.asset(
                          listtile[index]["car"],
                          height: w * 0.60,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(w * 0.03),
                        child: Row(
                          children: [
                            InkWell(
                onTap: () {
                if (Like.contains(index)) {
                Like.remove(index);
                setState(() {});
                } else {
                Like.add(index);
                print(Like);

                setState(() {});
                }
                },
                child: Like.contains(index)
                ? SvgPicture.asset(listtile[index]["icon2.5"])
                                : SvgPicture.asset(listtile[index]["icon2"])),
                            SvgPicture.asset(listtile[index]["icon3"]),
                            SvgPicture.asset(listtile[index]["icon4"]),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(ImageConst.like2),
                              SvgPicture.asset(
                                ImageConst.heart,
                                width: w * 0.06,
                              ),
                              Text(
                                listtile[index]["text4"],
                                style: TextStyle(
                                    fontSize: w * 0.03,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                          Text(
                            listtile[index]["text5"],
                            style: TextStyle(fontWeight: FontWeight.w600),
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: w * 0.01,
                );
              },
              itemCount: listtile.length),
        )
      ]),
    ));
  }
}
