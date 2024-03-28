import 'package:facebook/color_const.dart';
import 'package:facebook/forgot_password_email.dart';
import 'package:facebook/image_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'main.dart';

class forgot_password_mobile extends StatefulWidget {
  const forgot_password_mobile({super.key});

  @override
  State<forgot_password_mobile> createState() => _forgot_password_mobileState();
}

class _forgot_password_mobileState extends State<forgot_password_mobile> {
  final formKey = GlobalKey<FormState>();
  final phoneValidation = RegExp(r"[0-9]{10}$");
  TextEditingController mobileCondroller = TextEditingController();

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
        child: Padding(
          padding: EdgeInsets.all(w * 0.03),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Center(
                  child: Text(
                    "Enter your phone number",
                    style: TextStyle(
                      fontSize: 18,
                      height: w * 0.02,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                TextFormField(
                  controller: mobileCondroller,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  maxLength: 10,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (!phoneValidation.hasMatch(value!)) {
                      return "enter valid number";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    labelText: "number",
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                    hintText: "enter number",
                    hintStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    suffixIcon: InkWell(
                        onTap: () {
                          mobileCondroller.text = "";
                          setState(() {});
                        },
                        child: Icon(Icons.clear)),
                    enabledBorder: UnderlineInputBorder(),
                    focusedBorder: UnderlineInputBorder(),
                  ),
                ),
                InkWell(
                  onTap: () {
                    if (mobileCondroller.text != "" &&
                        formKey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => forgot_password_email(),
                          ));
                    } else {
                      mobileCondroller.text == ""
                          ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text("please enter your number")))
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
                Center(
                  child: Text(
                    "Search by email insted",
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
  }
}
