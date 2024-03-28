import 'package:facebook/color_const.dart';
import 'package:facebook/home_screen_1.dart';
import 'package:facebook/home_screen_2.dart';
import 'package:facebook/join_facebook.dart';
import 'package:facebook/login_screen_1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'image_const.dart';
import 'main.dart';

class Profil_Login extends StatefulWidget {
  const Profil_Login({super.key});

  @override
  State<Profil_Login> createState() => _Profil_LoginState();
}

class _Profil_LoginState extends State<Profil_Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(w * 0.03),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(),
            Container(
              height: w * 0.3,
              width: w * 0.3,
              child: Image.asset(ImageConst.Logo1),
            ),
            Padding(
              padding:  EdgeInsets.all(w*0.03),
              child: Column(
                  children: [
                    InkWell(onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => home_screen_1(

                        ),));
                      setState(() {

                      });
                    },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              height: w * 0.2,
                              width: w * 0.2,
                              child: Image.asset(ImageConst.sanjay)),
                          Text(
                            "Sanjay Shendy",
                            style: TextStyle(
                                fontSize: w * 0.05, fontWeight: FontWeight.w800),
                          ),
                          PopupMenuButton(
                            itemBuilder: (context) {
                              return [];
                            },
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: w*0.05,),
                    InkWell(onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => home_screen_2(),));
                      setState(() {

                      });
                    },
                      child: Container(
                        child: Row(
                          children: [
                            SvgPicture.asset(ImageConst.Addicon),
                            SizedBox(width: w*0.02,),
                            Text(
                              "Log Into Another Account",
                              style: TextStyle(fontWeight: FontWeight.w800),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: w*0.05,),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => login_screen_1(),));
                        setState(() {

                        });
                      },
                      child: Container(
                        child: Row(
                          children: [
                            SvgPicture.asset(ImageConst.find),
                            SizedBox(width: w*0.02,),
                            Text(
                              "Find Your Account",
                              style: TextStyle(fontWeight: FontWeight.w800),
                            )
                          ],
                        ),
                      ),
                    ),
                  ]),
            ),
            InkWell(onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => join_facebook(),),);
              setState(() {

              });
            },
              child: Container(
                height: w* 0.09,
                width: w* 0.8,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        ColorConst.primaryColor,
                        ColorConst.fourthcolor
                      ],
                      begin: Alignment.topLeft ,
                      end: Alignment.bottomRight),
                  borderRadius: BorderRadius.circular(w* 0.3),
                ),
                child: Center(
                  child: Text("Create New Facebook Account",style: TextStyle(color:Colors.white,fontWeight: FontWeight.w800)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
