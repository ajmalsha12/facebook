import 'package:facebook/personal_profile.dart';
import 'package:facebook/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'color_const.dart';
import 'image_const.dart';
import 'main.dart';

class messanger_chat extends StatefulWidget {
  const messanger_chat({super.key});

  @override
  State<messanger_chat> createState() => _messanger_chatState();
}

class _messanger_chatState extends State<messanger_chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(top: w*0.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Image.asset(ImageConst.chandanichampa,width: w*0.2,),
                    SizedBox(height: w*0.03,),
                    Text("Rocky Parker",style: TextStyle(fontWeight: FontWeight.w800,fontSize: w*0.05),)
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: w*0.05,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  SvgPicture.asset(ImageConst.call),
                  SizedBox(height: w*0.03,),
                  Text("Audio")
                ],
              ),
              Column(

                children: [
                  SvgPicture.asset(ImageConst.video3),
                  SizedBox(height: w*0.03,),
                  Text("Video")
                ],
              ),
              Column(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context, MaterialPageRoute(builder: (context) => personal_profile(),),);
                        setState(() {

                        });
                      },

                      child: SvgPicture.asset(ImageConst.profile3)),
                  SizedBox(height: w*0.03,),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => profile_page(),));
                    },
                      child: Text("profile"))
                ],
              ),
              Column(
                children: [
                  SvgPicture.asset(ImageConst.bell2),
                  SizedBox(height: w*0.03,),
                  Text("Mute")
                ],
              )
            ],
          ),
          Divider(color: ColorConst.thirdcolor,),
          Padding(
            padding:  EdgeInsets.all(w*0.04),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text("Theme"),
                  ],
                ),
                SizedBox(height: w*0.03,),
                Row(
                  children: [
                    Text("Emoji"),
                  ],
                ),
                SizedBox(height: w*0.03,),
                Row(
                  children: [
                    Text("Nickname"),
                  ],
                ),
                SizedBox(height: w*0.03,),
                Row(
                  children: [
                    Text("Word effects"),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: w*0.03),
            child: Divider(color: ColorConst.thirdcolor,),
          ),
          Padding(
            padding:  EdgeInsets.all(w*0.04),
            child: Column(

              children: [
                Row(
                    children: [
                      Text("More Actions",style: TextStyle(color: ColorConst.thirdcolor),),
                    ]),
                SizedBox(height: w*0.03,),
                Row(
                  children: [
                    Text("View photos & videos"),
                  ],
                ),
                SizedBox(height: w*0.03,),
                Row(
                  children: [
                    Text("Search in conversation"),
                  ],
                ),
                SizedBox(height: w*0.03,),
                Row(
                  children: [
                    Text("Secret conversation"),
                  ],
                ),
                SizedBox(height: w*0.03,),
                Row(
                  children: [
                    Text("Create group with Maisy"),
                  ],
                ),

              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: w*0.03),
            child: Divider(color: ColorConst.thirdcolor,),
          ),
          Padding(
            padding:  EdgeInsets.all(w*0.04),
            child: Column(

              children: [
                Row(
                    children: [
                      Text("Privacy",style: TextStyle(color: ColorConst.thirdcolor),),
                    ]),
                SizedBox(height: w*0.03,),
                Row(
                  children: [
                    Text("Notifications"),
                  ],
                ),
                SizedBox(height: w*0.03,),
                Row(
                  children: [
                    Text("Block"),
                  ],
                ),
                SizedBox(height: w*0.03,),
                Row(
                  children: [
                    Text("Report"),
                  ],
                ),



              ],
            ),
          ),
        ],
      ),
    );
  }
}
