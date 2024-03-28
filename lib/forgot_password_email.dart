import 'package:facebook/color_const.dart';
import 'package:facebook/image_const.dart';
import 'package:facebook/otp_verification_code.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'main.dart';

class forgot_password_email extends StatefulWidget {
  const forgot_password_email({super.key});

  @override
  State<forgot_password_email> createState() => _forgot_password_emailState();
}

class _forgot_password_emailState extends State<forgot_password_email> {
  final formKey = GlobalKey<FormState>();
  final emailValidation = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  TextEditingController emailCondroller = TextEditingController();

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
              child: SvgPicture.asset(
                ImageConst.Shape,
                color: ColorConst.secandarycolor,
              ),
            ),
          ),
        ),
        backgroundColor: ColorConst.fivecolor,
        title: Text(" Find Your Account",
            style: TextStyle(
              color: ColorConst.secandarycolor,
              fontWeight: FontWeight.w400,
              fontSize: 14,
            )),
      ),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(w * 0.03),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Center(
                  child: Text(
                    "Enter your email address",
                    style: TextStyle(
                      fontSize: 18,
                      height: w * 0.02,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                TextFormField(
                  controller: emailCondroller,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (!emailValidation.hasMatch(value!)) {
                      return "enter valid email";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    labelText: "email",
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                    hintText: "enter email",
                    hintStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    suffixIcon: InkWell(
                        onTap: () {
                          emailCondroller.text = "";
                          setState(() {});
                        },
                        child: Icon(Icons.clear)),
                    enabledBorder: UnderlineInputBorder(),
                    focusedBorder: UnderlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: w * 0.2,
                ),
                InkWell(
                  onTap: () {
                    if (emailCondroller.text != "" &&
                        formKey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => otp_verification_code(),
                          ));
                    } else {
                      emailCondroller.text == ""
                          ? ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("plese enter your email")))
                          : ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text("enter your valid details")));
                    }
                  },
                  child: Container(
                    width: w * 0.7,
                    height: w * 0.1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(w * 0.04),
                      gradient: LinearGradient(colors: [
                        ColorConst.primaryColor,
                        ColorConst.eigthcolor
                      ]),
                    ),
                    child: Center(
                        child: Text(
                      "Find Your Account",
                      style: TextStyle(color: ColorConst.fivecolor),
                    )),
                  ),
                ),
                SizedBox(
                  height: w * 0.04,
                ),
                Center(
                  child: Text(
                    "Search by number insted",
                    style: TextStyle(
                        fontSize: 15,
                        height: w * 0.02,
                        fontWeight: FontWeight.w500,
                        color: ColorConst.primaryColor),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}
