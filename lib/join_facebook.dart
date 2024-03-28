import 'package:facebook/color_const.dart';
import 'package:facebook/what_is_your_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'image_const.dart';
import 'main.dart';

class join_facebook extends StatefulWidget {
  const join_facebook({super.key});

  @override
  State<join_facebook> createState() => _join_facebookState();
}

class _join_facebookState extends State<join_facebook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: Center(
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
              setState(() {

              });
            },
              child: Container(
                height: w*0.06,
                  width: w*0.4 ,
                  child: SvgPicture.asset(ImageConst.Shape))),


        ),
        backgroundColor: ColorConst.fivecolor,
        title: Text("Create account",
        style: TextStyle(
          color: ColorConst.secandarycolor
        ),),
      ),
      body:Column(
        children: [
          Image.asset(ImageConst.illustration),
          SizedBox(height: w*0.5,),
          Center(child: Text("Join Facebook",
          style: TextStyle(
            color: ColorConst.secandarycolor,
            fontWeight: FontWeight.w600,
            fontSize: w*0.05,


          ),)),
          SizedBox(height: w*0.05,),
          Text("We’ll help you ",
          style: TextStyle(color: ColorConst.thirdcolor,
          fontWeight: FontWeight.w400,
          fontSize: w*0.03),),
          Text("create a new account in a few easy steps.",
          style: TextStyle(color: ColorConst.thirdcolor,
          fontWeight: FontWeight.w400,
          fontSize: w*0.03),),
          SizedBox(height: w*0.08,),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => what_is_your_name(),));
            },
            child: Container(
              width: w * 0.7,
              height: w * 0.1,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(w*0.05),
                  gradient: LinearGradient(colors: [ColorConst.primaryColor,ColorConst.eigthcolor])
              ),
              child: Center(child: Text("Next",
                style: TextStyle(color: ColorConst.fivecolor,),),


              ),


            ),
          ),
          SizedBox(height: w*0.35,),
          Text("Already have an account?",
          style: TextStyle(color: ColorConst.primaryColor),)
        ],
      ),
    );
  }
}
