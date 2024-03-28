import 'package:facebook/contact_number.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'color_const.dart';
import 'image_const.dart';
import 'main.dart';

class what_is_your_gender extends StatefulWidget {

  const what_is_your_gender({super.key});

  @override
  State<what_is_your_gender> createState() => _what_is_your_genderState();
}

class _what_is_your_genderState extends State<what_is_your_gender> {
  String gender = "mk";
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
      child: SvgPicture.asset(
      ImageConst.Shape,
      color: ColorConst.secandarycolor,
      ),
    ),
    ),
    ),
    backgroundColor: ColorConst.fivecolor,
          title: Text("Gender",
              style: TextStyle(
                color: ColorConst.secandarycolor,
                fontWeight: FontWeight.w400,
                fontSize: 14,
              )),
        ),

      body: Padding(
        padding:  EdgeInsets.all(w*0.07),
        child: Column(

          children: [
            Center(child: Text("What,s your gender",
              style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: ColorConst.secandarycolor),)),
            Text("You can change who sees your gennder on your profile later.",
              style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: ColorConst.thirdcolor),),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Female",style: TextStyle(color: ColorConst.secandarycolor,fontSize: 14,fontWeight: FontWeight.w600),),
                  Radio(
                    value: "mf",
                    groupValue: gender,
                    onChanged: (value) {
                      gender = value!;
                      setState(() {});
                    },
                  ),

                ],
              ),
            ),
            Divider(color: ColorConst.thirdcolor,thickness: 1,indent: 15,endIndent: 15),
            Container(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Male",style: TextStyle(color: ColorConst.secandarycolor,fontSize: 14,fontWeight: FontWeight.w600)),
                  Radio(
                    value: "mk",
                    groupValue: gender,
                    onChanged: (value) {
                      gender = value!;
                      setState(() {

                      });
                    },
                  ),
                ],
              ),
            ),
            Divider(color: ColorConst.thirdcolor,thickness: 1,indent: 15,endIndent: 15),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Custom",style: TextStyle(color: ColorConst.secandarycolor,fontSize: 14,fontWeight: FontWeight.w600)),
                  Radio(
                    value: "f",
                    groupValue: gender,
                    onChanged: (value) {
                      gender = value!;
                      setState(() {});
                    },
                  ),
                ],
              ),
            ),
            Text("Select custome to choose another gender,\n or if you’d rather not say",style: TextStyle(color: ColorConst.thirdcolor,fontSize: 10,fontWeight: FontWeight.w400),),


            Divider(color: ColorConst.thirdcolor,thickness: 1,indent: 15,endIndent: 15),
            SizedBox(height: w*0.30,),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => contact_number(),
                    ));
              },
              child: Container(
                width: w * 0.7,
                height: w * 0.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(w * 0.04),
                  color: ColorConst.fourthcolor,
                ),
                child: Center(
                    child: Text(
                      "Next",
                      style: TextStyle(color: ColorConst.fivecolor),
                    )),
              ),
            ),

          ],

        ),
      ),

    );

  }
}
