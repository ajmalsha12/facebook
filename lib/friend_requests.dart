import 'package:facebook/image_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'color_const.dart';
import 'main.dart';

class friend_requests extends StatefulWidget {
  const friend_requests({super.key});

  @override
  State<friend_requests> createState() => _friend_requestsState();
}

class _friend_requestsState extends State<friend_requests> {
  bool b = false;
  bool c = true;
  bool d = false;
  bool clear=false;
  List a=[
    {
      "images": ImageConst.kiranpawar,
      "text1": "Kiran Pawar",
      "text2": "1 mutual friend",
      "text3": "9w",
    },
    {
      "images": ImageConst.chandreshyadav,
      "text1": "Chandresh Yadav",
      "text2": "20 mutual friends",
      "text3": "10w",
    },
    {
      "images": ImageConst.marvinmckervin,
      "text1": "Marvin McKevirn",
      "text2": "1 mutual friend",
      "text3": "12w",
    },
    {
      "images": ImageConst.bhumipatel,
      "text1": "Bhumi Patel",
      "text2": "19 mutual friend",
      "text3": "19w",
    },
    {
      "images": ImageConst.kiaraparmar,
      "text1": "Kiara Parmar",
      "text2": "37 mutual friend",
      "text3": "20w",
    },
    {
      "images": ImageConst.chandanichampa,
      "text1": "Chandani Champa",
      "text2": "24 mutual friend",
      "text3": "24w",
    },
    {
      "images": ImageConst.kiranpawar,
      "text1": "Kiran Pawar",
      "text2": "1 mutual friend",
      "text3": "9w",
    },
  ];

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(9.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Friends",style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),),
                SvgPicture.asset(ImageConst.find,color: ColorConst.secandarycolor,)
              ],
            ),
            SizedBox(height: w*0.05,),
            Row(
              children: [
                Container(
                  height: w*0.1,
                  width: w*0.25,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors:[ ColorConst.primaryColor,
                          ColorConst.eigthcolor]),
                    borderRadius: BorderRadius.circular(w*0.03),
                  ),
                  child: Center(
                    child: Text("Suggestions",style: TextStyle(
                      color: ColorConst.fivecolor,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),),
                  ),
                ),
                SizedBox(width: w*0.03,),
                Container(
                  height: w*0.1,
                  width: w*0.25,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors:[ColorConst.primaryColor,
                          ColorConst.eigthcolor]),
                    borderRadius: BorderRadius.circular(w*0.03),
                  ),
                  child: Center(
                    child: Text("Your Friends",style: TextStyle(
                      color: ColorConst.fivecolor,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),),
                  ),
                ),
              ],
            ),
            Divider(
              color: ColorConst.thirdcolor,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text("Friend request ",style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),),
                    Text("400",style: TextStyle(
                      fontSize: 18,
                      color: Colors.red,
                      fontWeight: FontWeight.w600,
                    ),),
                  ],
                ),

                InkWell(
                  onTap:() {
                    clear=!clear;
                    setState(() {

                    });
                  },
                  child: clear==false? Text("Sell less",style: TextStyle(
                    fontSize: 18,
                    color: ColorConst.primaryColor,
                    fontWeight: FontWeight.w600,
                  ),):
                      Text("Sell All",style: TextStyle(color: ColorConst.primaryColor,fontWeight: FontWeight.w600,fontSize: 18),)
                ),
              ],
            ),

            Container(
              height: w*1.2,
              width:w*0.9 ,
              child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: w*0.2,
                              width: w*0.2,
                              decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(w*0.03,)
                              ),
                              child:Image.asset(a[index]["images"],) ,
                            ),
                            SizedBox(
                              width: w*0.015,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(a[index]["text1"],style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600
                                ),),
                                Text(a[index]["text2"],style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: ColorConst.thirdcolor
                                ),),
                                Row(
                                  children: [
                                    Container(
                                      height: w*0.09,
                                      width: w*0.2,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            colors:[ ColorConst.primaryColor,
                                              ColorConst.eigthcolor]),
                                        borderRadius: BorderRadius.circular(w*0.03),
                                      ),
                                      child: Center(
                                        child: Text("Confirm",style: TextStyle(
                                          color:ColorConst.fivecolor,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16,
                                        ),),
                                      ),
                                    ),
                                    SizedBox(
                                      width: w*0.015,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        b = false;
                                        c = true;
                                        d = false;
                                        showDialog(
                                          barrierDismissible: false,
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              title: Text(
                                                  "are you sure you want to delete"),
                                              content: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  Container(
                                                    height: w * 0.07,
                                                    width: w * 0.1,
                                                    decoration: BoxDecoration(
                                                      gradient:
                                                      LinearGradient(colors: [
                                                        ColorConst.primaryColor,
                                                        ColorConst.fourthcolor
                                                      ]),
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          w * 0.03),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        "YES",
                                                        style: TextStyle(
                                                            color:
                                                            ColorConst.fivecolor),
                                                      ),
                                                    ),
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: Container(
                                                      height: w * 0.07,
                                                      width: w * 0.1,
                                                      decoration: BoxDecoration(
                                                        gradient:
                                                        LinearGradient(colors: [
                                                          ColorConst.primaryColor,
                                                          ColorConst.fourthcolor
                                                        ]),
                                                        borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                      ),
                                                      child: Center(
                                                        child: Text("NO",
                                                            style: TextStyle(
                                                                color: ColorConst
                                                                    .fivecolor)),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            );
                                          },
                                        );
                                        setState(() {});
                                      },
                                      child: Container(
                                        height: w*0.09,
                                        width: w*0.2,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                              colors:[ ColorConst.fivecolor,
                                                ColorConst.fivecolor]),
                                          borderRadius: BorderRadius.circular(w*0.03),
                                        ),
                                        child: Center(
                                          child: Text("Delete",style: TextStyle(
                                            color: ColorConst.secandarycolor,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16,
                                          ),),
                                        ),
                                      ),
                                    ),

                                  ],
                                )
                              ],
                            ),

                          ],
                        ),

                        Text(a[index]["text3"],style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: ColorConst.tencolor
                        ),),

                      ],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      // width: width*0.04,
                      height: w*0.04,
                    );
                  },
                  itemCount: clear?3:a.length),
            )
          ],
        ),
      ),
    );
  }
}

