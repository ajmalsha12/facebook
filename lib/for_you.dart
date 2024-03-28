import 'package:facebook/color_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'image_const.dart';
import 'main.dart';

class for_you extends StatefulWidget {
  const for_you({super.key});

  @override
  State<for_you> createState() => _for_youState();
}

class _for_youState extends State<for_you> {
  List video = [
    {
      "image1": ImageConst.chandreshyadav,
      "text": "BasicHacker . ",
      "text1": "Follow",
      "image2": ImageConst.dot,
      "text2": "10 h",
      "image3": "",
      "text3": "FREE FIRE LIVE ",
      "text4": "... See more",
      "image4": ImageConst.game,
      "icon1": ImageConst.like1,
      "icon2.5":ImageConst.bluelike,
      "icon2": ImageConst.ms,
      "icon3": ImageConst.cm,
      "icon4": ImageConst.like2,
      "icon5": ImageConst.heart,
      "text5": "10k",
      "text6": "400 Comments . 270 Shares ",
      "icon6": ""
    },
    {
      "image1": ImageConst.chandreshyadav,
      "text": "BasicHacker . ",
      "text1": "Follow",
      "image2": ImageConst.dot,
      "text2": "10 h",
      "image3": "",
      "text3": "FREE FIRE LIVE ",
      "text4": "... See more",
      "image4": ImageConst.game,
      "icon1": ImageConst.like1,
      "icon2.5":ImageConst.bluelike,
      "icon2": ImageConst.ms,
      "icon3": ImageConst.cm,
      "icon4": ImageConst.like2,
      "icon5": ImageConst.heart,
      "text5": "10k",
      "text6": "400 Comments . 270 Shares ",
      "icon6": ""
    },
  ];
  List Like =[];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: w * 2.4,
              width: w * 1,
              color: ColorConst.fivecolor,
              child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      height: w * 1.2,
                      width: w * 0.4,
                      color: ColorConst.fivecolor,
                      child: Column(
                        children: [
                          ListTile(
                            leading: Image.asset(video[index]["image1"]),
                            title: Row(
                              children: [
                                Text(video[index]["text"]),
                                Text(
                                  video[index]["text1"],
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: ColorConst.primaryColor),
                                )
                              ],
                            ),
                            subtitle: Row(
                              children: [
                                Text(
                                  video[index]["text2"],
                                  style: TextStyle(fontSize: w * 0.03),
                                )
                              ],
                            ),
                            trailing: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SvgPicture.asset(
                                  video[index]["image2"],
                                  width: 0.01,
                                  color: ColorConst.secandarycolor,
                                ),
                                SvgPicture.asset(video[index]["icon6"]),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(w * 0.03),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      video[index]["text3"],
                                      style: TextStyle(
                                          fontSize: w * 0.035,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(video[index]["text4"])
                                  ],
                                )
                              ],
                            ),
                          ),
                          Image.asset(
                            video[index]["image4"],
                          ),
                          Padding(
                            padding: EdgeInsets.all(w * 0.03),
                            child: Row(
                              children: [
                                InkWell(
                                    onTap: () {
                                      if (Like.contains(index)){
                                        Like.remove(index);
                                        setState(() {

                                        });
                                      }else{
                                        Like.add(index);
                                        print(Like);

                                        setState(() {

                                        });
                                      }
                                    },
                                    child:  Like.contains(index)?
                                   SvgPicture.asset(video[index]["icon2.5"]):
                                    SvgPicture.asset(video[index]["icon1"])),
                                SizedBox(
                                  width: w * 0.05,
                                ),
                                SvgPicture.asset(video[index]["icon2"]),
                                SizedBox(
                                  width: w * 0.05,
                                ),
                                SvgPicture.asset(video[index]["icon3"]),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(video[index]["icon4"]),
                                  SvgPicture.asset(
                                    video[index]["icon5"],
                                    width: w * 0.04,
                                  ),
                                  Text(
                                    video[index]["text5"],
                                    style: TextStyle(fontSize: w * 0.03),
                                  )
                                ],
                              ),
                              Text(video[index]["text6"])
                            ],
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: w * 0.03,
                    );
                  },
                  itemCount: video.length),
            )
          ],
        ),
      ),
    ));
  }
}
