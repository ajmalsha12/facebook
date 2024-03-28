import 'package:facebook/image_const.dart';
import 'package:facebook/messanger_chat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'color_const.dart';
import 'main.dart';

class new_message extends StatefulWidget {
  const new_message({super.key});

  @override
  State<new_message> createState() => _new_messageState();
}

class _new_messageState extends State<new_message> {
  int count=0;
  bool cont = false;
  TextEditingController feedCondroller=TextEditingController();
  List a=[
    {
      "images": ImageConst.sanjay,
      "text1": " Rockey",

      "text2": "who are you.",
      "color1" :ColorConst.fivecolor,
      "text3": "1:00AM",
      "page":messanger_chat()
    },
    {
      "color1" :ColorConst.fivecolor,
      "images": ImageConst.rockyparker,
      "text1": " kiran r",

      "text2": "hello.",
      "text3": "8:36 PM",
      "page":messanger_chat()
    },
    {
      "images": ImageConst.kiranpawar,
      "text1": " aslam",
      "color1" :ColorConst.fivecolor,

      "text2": "See you soon",
      "text3": "12:14PM",
      "color" :ColorConst.seventhcolor,
      "page":messanger_chat()

    },
    {
      "images": ImageConst.chandanichampa,
      "text1": "Maisy",
      "color1" :ColorConst.fivecolor,

      "text2": "ok thanks",
      "text3": "sun",
      "page":messanger_chat()
    },
    {
      "images": ImageConst.np5,
      "text1": " kiran",

      "text2": "call me later",
      "color1" :ColorConst.fivecolor,
      "text3": "fri",
      "color" :ColorConst.seventhcolor,
     "page":messanger_chat()

    },
    {
      "images": ImageConst.kiaraparmar,
      "color1" :ColorConst.fivecolor,
      "text1": " aslam",

      "text2": "See you soon",
      "text3": "12:14PM",
      "color" :ColorConst.seventhcolor,
      "page":messanger_chat()
    },
    {
      "images": ImageConst.marvinmckervin,
      "color1" :ColorConst.fivecolor,
      "text1": "Arjun",

      "text2": "ok thanks",
      "text3": "sun",
      "page":messanger_chat()
    },
    {
      "images": ImageConst.tejas,
      "color1" :ColorConst.fivecolor,
      "text1": " kiran",
      "color" :ColorConst.seventhcolor,

      "text2": "call me later",
      "text3": "fri",
      "page":messanger_chat()
    },

  ];
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          leading:
          InkWell(onTap: () {
            Navigator.pop(context);
          },
              child: Center(child: SvgPicture.asset(ImageConst.Shape))),
          title:   Text("New Messages",style: TextStyle(
              fontSize: 18,
              color: Colors.black,

              fontWeight: FontWeight.w500
          ),) ,
          actions: [
            // SizedBox(height: width*0.05,),
            Center(
              child: Stack(
                  children:[
                    InkWell(onTap:() {
                      cont = !cont;
                      setState(() {

                      });
                    } ,
                      child: Container(
                        width: w*0.15,
                        height: w*0.08,
                        decoration: BoxDecoration(
                            border: Border.all(color: ColorConst.primaryColor),
                            borderRadius:BorderRadius.circular(w*0.05)
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: Duration(milliseconds: 200),
                      right: cont ==true?0:w*0.07,
                      left: cont ==true?w*0.07 : 0,
                      child: InkWell(onTap: () {
                        cont=!cont;
                        setState(() {

                        });
                      },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 400),
                          width: w*0.09,
                          height: w*0.08,
                          decoration: BoxDecoration(
                              border: Border.all(color: ColorConst.secandarycolor),
                              borderRadius:BorderRadius.circular(w*0.05)
                          ),
                          child: SvgPicture.asset(ImageConst.lock2,fit: BoxFit.scaleDown,),
                        ),
                      ),
                    )
                  ]),
            ),
            SizedBox(
              width: w*0.02,
            ),

          ],
        ),



        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding:  EdgeInsets.all(w*0.03),
            child: Container(
              height: h*1.2,
              width: w*1,
              child: Column(
                children: [


                  Container(
                    child: TextFormField(
                      controller: feedCondroller,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.search,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      decoration: InputDecoration(
                        labelText:"To:   Type a name or group",
                        labelStyle: TextStyle(fontWeight: FontWeight.w400,
                          fontSize: 12,),
                        //suffixIcon: SvgPicture.asset(Imageconstant.gallery,color: ColorConst.secandarycolor,),
                        hintText: "",
                        hintStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),

                        border: UnderlineInputBorder(

                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(ImageConst.group,color: ColorConst.primaryColor,),
                          SizedBox(width: w*0.03,),
                          Text("Create a new group",style: TextStyle(
                              fontSize: 12,
                              color: ColorConst.primaryColor,
                              fontWeight: FontWeight.w500
                          ),)
                        ],
                      ),
                      SizedBox(height: w*0.03,),
                      Row(
                        children: [
                          SvgPicture.asset(ImageConst.videocall,color: ColorConst.primaryColor,),
                          SizedBox(width: w*0.03,),
                          Text("Create a new video call",style: TextStyle(
                              fontSize: 12,
                              color: ColorConst.primaryColor,
                              fontWeight: FontWeight.w500
                          ),)
                        ],
                      ),
                      Divider(color: ColorConst.primaryColor,)
                    ],
                  ),

                  Container(
                    height: w*1.7,
                    width:w*0.96 ,

                    child: ListView.separated(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return InkWell(onTap: () {
                            Navigator.push(context, MaterialPageRoute
                              (builder: (context) => a[index]["page"],));
                          },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(

                                  child: Row(
                                    children: [
                                      Container(
                                        height: w*0.16,
                                        width: w*0.16,
                                        child: Stack(
                                            children:[

                                              Container(
                                                height: w*0.15,
                                                width: w*0.15,
                                                decoration:BoxDecoration(
                                                    borderRadius: BorderRadius.circular(w*0.03,),
                                                    image: DecorationImage(image: AssetImage(a[index]["images"]),fit: BoxFit.fill)
                                                ),
                                                // child:Image.asset(a[index]["images"],fit: BoxFit.fill,) ,
                                              ),
                                              Positioned(
                                                top: w*0.12,left: w*0.12,
                                                child: CircleAvatar(
                                                  backgroundColor: a[index]["color1"],
                                                  radius: w*0.018,
                                                  child: CircleAvatar(
                                                    backgroundColor: a[index]["color"],
                                                    radius: w*0.014,
                                                  ),
                                                ),
                                              )
                                            ]
                                        ),
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



                                        ],
                                      ),

                                    ],
                                  ),
                                ),



                              ],
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            // width: width*0.04,
                            height: w*0.04,
                          );
                        },
                        itemCount: a.length),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

