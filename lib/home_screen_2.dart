import 'package:facebook/color_const.dart';
import 'package:facebook/image_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'main.dart';

class home_screen_2 extends StatefulWidget {
  const home_screen_2({super.key});

  @override
  State<home_screen_2> createState() => _home_screen_2State();
}

class _home_screen_2State extends State<home_screen_2> {
  TextEditingController name = TextEditingController();
  List images = [
    {"image1": ImageConst.profile, "image2": ImageConst.add2, "text": ""},
    {
      "image1": ImageConst.story1,
      "image2": ImageConst.person1,
      "text": "Vish Patil"
    },
    {
      "image1": ImageConst.story2,
      "image2": ImageConst.person2,
      "text": "Rakesh Shetty"
    },
    {
      "image1": ImageConst.story3,
      "image2": ImageConst.person3,
      "text": "Akash Bolre"
    },
  ];

  List listtile = [
    {
      "list": ImageConst.ellipse,
      "text1": "Deven mestry is with Mahesh \n"
          "joshi.",
      "text2": "1 h .  Mumbai, Maharastra .",
      "icon": ImageConst.gp,
      "text3": "Old is Gold..!!❤😍",
      "car": ImageConst.oldcar,
      "icon2": ImageConst.like1,
      "icon2.5":ImageConst.bluelike,
      "icon3": ImageConst.ms,
      "icon4": ImageConst.cm,
      "text4": "Liked by and 155 others ",
      "text5": "4 Comments",
      "list2": ImageConst.profile,
    },
    {
      "list": ImageConst.tejas,
      "text1": "Tejas Phopale updated his profile  \n"
          "photo",
      "text2": "2 h . Delhi . ",
      "icon": ImageConst.earth,
      "text3": "",
      "car": ImageConst.tejas,
      "icon2": "",
      "icon2.5":"",
      "icon3": "",
      "icon4": "",
      "text4": "You, Rakesh Shetty and 130 others ",
      "text5": "41 Comments",
      "list2": ImageConst.profile,
    },
    {
      "list": ImageConst.brooklyn,
      "text1": "Brooklyn Simmons is in Dubai",
      "text2": "1 d. ",
      "icon": ImageConst.earth,
      "text3": "",
      "car": ImageConst.brooklynpost,
      "icon2": ImageConst.like1,
      "icon2.5":ImageConst.bluelike,
      "icon3": ImageConst.ms,
      "icon4": ImageConst.cm,
      "text4": "You, Anin Kale and 205 others ",
      "text5": "14 Comments",
      "list2": ImageConst.profile,
    },
    {
      "list": ImageConst.chetan,
      "text1": "",
      "text2": "6 h .  Pune, Maharastra .",
      "icon": "",
      "text3": "Home coming ❤",
      "car": ImageConst.chetanpost,
      "icon2": ImageConst.like1,
      "icon2.5":ImageConst.bluelike,
      "icon3": ImageConst.ms,
      "icon4": ImageConst.cm,
      "text4": "Liked by and 244 others ",
      "text5": "98Comments",
      "list2": ImageConst.profile,
    },
  ];
  List Like =[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  ImageConst.profile,
                  width: w * 0.2,
                ),
                Container(
                  width: w * 0.6,
                  height: w * 0.1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(w * 0.04),
                      color: ColorConst.fivecolor),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                          child: TextFormField(
                        controller: name,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            suffixIcon: SvgPicture.asset(
                              ImageConst.imagegroup,
                            ),
                            hintText: "What’s on your mind, Sanjay?",
                            hintStyle: TextStyle(fontSize: w * 0.03)),
                      ))
                    ],
                  ),
                ),
                Container(
                  child: SvgPicture.asset(ImageConst.search),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(w * 1),
                      color: ColorConst.fivecolor),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: w * 0.09,
                  width: w * 0.20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(w * 0.04),
                    color: ColorConst.lightyellow,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset(ImageConst.reels, width: w * 0.07),
                      Text("Reels",
                          style: TextStyle(
                              color: ColorConst.yellow,
                              fontWeight: FontWeight.w600)),
                    ],
                  ),
                ),
                Container(
                  height: w * 0.09,
                  width: w * 0.20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(w * 0.04),
                    color: ColorConst.lightgreen,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(ImageConst.room, width: w * 0.07),
                      Text("Room",
                          style: TextStyle(
                              color: ColorConst.green,
                              fontWeight: FontWeight.w600)),
                    ],
                  ),
                ),
                Container(
                  height: w * 0.09,
                  width: w * 0.20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(w * 0.04),
                    color: ColorConst.lightorange,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(ImageConst.groups, width: w * 0.07),
                      Text("Room",
                          style: TextStyle(
                              color: ColorConst.orange,
                              fontWeight: FontWeight.w600)),
                    ],
                  ),
                ),
                Container(
                  height: w * 0.09,
                  width: w * 0.20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(w * 0.04),
                    color: ColorConst.lightblue,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(ImageConst.lives, width: w * 0.07),
                      Text("Room",
                          style: TextStyle(
                              color: ColorConst.blue,
                              fontWeight: FontWeight.w600)),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: w * 0.53,
              width: w * 1,
              child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: w * 0.45,
                                width: w * 0.30,
                                child: Column(
                                  children: [
                                    Container(
                                      height: w * 0.4,
                                      width: w * 0.30,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(w * 0.04),
                                      ),
                                      child: Image.asset(
                                        images[index]["image1"],
                                        fit: BoxFit.fill,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Positioned(
                                  top: w * 0.32,
                                  left: w * 0.12,
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage(
                                      images[index]["image2"],
                                    ),
                                    backgroundColor: Colors.transparent,
                                  ))
                            ],
                          ),
                          Text(
                            images[index]["text"],
                            style: TextStyle(fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: w * 0.03,
                      width: w * 0.03,
                    );
                  },
                  itemCount: images.length),
            ),
            Divider(
              color: ColorConst.thirdcolor,
            ),
            Container(
              height: w * 5,
              width: w * 1,
              color: ColorConst.thirdcolor,
              child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      height: w * 1.25,
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
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                listtile[index]["text3"],
                                style: TextStyle(fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                          Container(
                            child: Image.asset(listtile[index]["car"],height: w*0.65,),

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


                                    child: Like.contains(index)?
                                        SvgPicture.asset(listtile[index]["icon2.5"]):
                                    SvgPicture.asset(listtile[index]["icon2"])),
                                SizedBox(
                                  width: w * 0.03,
                                ),
                                SvgPicture.asset(listtile[index]["icon3"]),
                                SizedBox(
                                  width: w * 0.03,
                                ),
                                SvgPicture.asset(listtile[index]["icon4"]),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(w * 0.03),
                            child: Row(
                              children: [
                                Image.asset(
                                  listtile[index]["list2"],
                                  width: w * 0.1,
                                ),
                                SizedBox(width: w * 0.03),
                                Container(
                                  width: w * 0.6,
                                  height: w * 0.1,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(w * 0.04),
                                      color: ColorConst.fivecolor),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Expanded(
                                          child: TextFormField(
                                        controller: name,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "write a comment..",
                                          hintStyle:
                                              TextStyle(fontSize: w * 0.03),
                                        ),
                                      ))
                                    ],
                                  ),
                                ),


                              ],
                            ),
                          ),
                          Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(ImageConst.like2),

                                  SvgPicture.asset(ImageConst.heart,),
                                  Text(listtile[index]["text4"],style: TextStyle(fontSize: w*0.03,fontWeight: FontWeight.w600),),
                                ],
                              ),

                              Row(
                                children: [
                               Text(listtile[index]["text5"],style: TextStyle(fontWeight: FontWeight.w600),)
                                ],
                              )
                            ],
                          ),

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
            ),



          ],),


      ),
    );
  }
}
