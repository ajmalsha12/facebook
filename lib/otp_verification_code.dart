import 'package:facebook/color_const.dart';
import 'package:facebook/create_new_password.dart';
import 'package:facebook/image_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pinput/pinput.dart';

import 'main.dart';

class otp_verification_code extends StatefulWidget {
  const otp_verification_code({super.key});

  @override
  State<otp_verification_code> createState() => _otp_verification_codeState();
}

class _otp_verification_codeState extends State<otp_verification_code> {
  TextEditingController otpCondroller = TextEditingController();

  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

     return Scaffold(
        appBar: AppBar(
          elevation: 1,
          leading: Center(
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: w*0.06,
                width: w*0.4 ,


                child: SvgPicture.asset(ImageConst.Shape, color: ColorConst.secandarycolor,
                ),
              ),
            ),
          ),
          backgroundColor: ColorConst.fivecolor,
          title: Text("Find Your Account",
              style: TextStyle(
                color: ColorConst.secandarycolor,
                fontWeight: FontWeight.w400,
                fontSize: 14,
              )), // TextStyle, Text
        ),
        body: Padding(
          padding: EdgeInsets.all(w * 0.07),
          child: Form(
            child: Column(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Enter the code we sent to",
                          style: TextStyle(
                            height: w * 0.01,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: ColorConst.secandarycolor,
                          ),
                        ),
                      ],
                    ),
                    Text("Sanjayshendy123@gmail.com",style: TextStyle(fontWeight: FontWeight.w600)),
                  ],
                ),
                Text("We sent 6 digit code to your email address.",style: TextStyle(color: ColorConst.thirdcolor)),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    label: Center(child: Text("Enter Code")),
                  ),
                ),
                SizedBox(height: w*0.04,),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => create_new_password(),
                        ));
                  },

                  child: Container(
                    width: w * 0.7,
                    height: w * 0.1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(w * 0.04),
                      gradient: LinearGradient(colors: [
                        ColorConst.primaryColor,
                        ColorConst.fourthcolor
                      ]),
                    ),
                    child: Center(
                        child: Text(
                          "Continue",
                          style: TextStyle(color: ColorConst.fivecolor),
                        )),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      height: w*0.20,
                      child: Row(
                        children: [
                          SvgPicture.asset(ImageConst.email),
                          Text(
                            "Send email again",
                            style: TextStyle(fontWeight: FontWeight.w800),
                          )
                        ],
                      ),


                    ),
                    Row(
                      children: [
                        SvgPicture.asset(ImageConst.message),
                        Text(
                          "Get code via SMS",
                          style: TextStyle(fontWeight: FontWeight.w800),
                        )
                      ],
                    ),

                  ],
                )

              ],
            ),
          ),
        ));
  }
}
