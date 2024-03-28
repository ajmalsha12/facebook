import 'package:facebook/forgot_password_mobile.dart';
import 'package:facebook/image_const.dart';
import 'package:facebook/join_facebook.dart';
import 'package:flutter/material.dart';

import 'color_const.dart';
import 'main.dart';

class login_screen_1 extends StatefulWidget {
  const login_screen_1({super.key});

  @override
  State<login_screen_1> createState() => _login_screen_1State();
}

class _login_screen_1State extends State<login_screen_1> {
  bool a = false;
  final formKey = GlobalKey<FormState>();
  final phoneValidation = RegExp(r"[0-9]{10}$");
  final emailValidation = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  final passwordValidation =
      RegExp(r"^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$");

  TextEditingController phoneemailCondroller = TextEditingController();
  TextEditingController PasswordCondroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(children: [
                  Container(child: Image.asset(ImageConst.Background)),
                  Padding(
                    padding: EdgeInsets.only(top: h * 0.5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(w * 0.02),
                          child: Column(
                            children: [
                              TextFormField(
                                // textAlign: TextAlign.start,
                                controller: phoneemailCondroller,
                                keyboardType: TextInputType.emailAddress,
                                textInputAction: TextInputAction.next,

                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 14),
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (value) {
                                  if (!emailValidation.hasMatch(value!)) {
                                    return "enter valid email";
                                  } else {
                                    return null;
                                  }
                                },
                                decoration: InputDecoration(
                                    labelText: "Phone or Email",
                                    labelStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    hintText: "enter Phone or Email",
                                    hintStyle: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14),
                                    enabledBorder: UnderlineInputBorder(),
                                    focusedBorder: UnderlineInputBorder()),
                              ),
                              TextFormField(
                                // textAlign: TextAlign.start,
                                controller: PasswordCondroller,
                                keyboardType: TextInputType.visiblePassword,
                                obscureText: a ? false : true,
                                textInputAction: TextInputAction.next,

                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 14),
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (value) {
                                  if (!passwordValidation.hasMatch(value!)) {
                                    return "enter valid password";
                                  } else {
                                    return null;
                                  }
                                },
                                decoration: InputDecoration(
                                    suffixIcon: InkWell(
                                      onTap: () {
                                        a = !a;
                                        setState(() {});
                                      },
                                      child: Icon(a
                                          ? Icons.visibility
                                          : Icons.visibility_off),
                                    ),
                                    labelText: "Password",
                                    labelStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    hintText: "Enter Password",
                                    hintStyle: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14),
                                    enabledBorder: UnderlineInputBorder(),
                                    focusedBorder: UnderlineInputBorder()),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
                SizedBox(height: w * 0.1),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        if (phoneemailCondroller.text != "" &&
                            PasswordCondroller.text != "" &&
                            formKey.currentState!.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => forgot_password_mobile(),
                              ));
                        } else {
                          phoneemailCondroller.text == ""
                              ? ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content: Text(
                                          "plese enter your phone or email")))
                              : PasswordCondroller.text == ""
                                  ? ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: Text(
                                              "plese enter your password")))
                                  : ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: Text(
                                              "enter your valid details")));
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
                          " Login",
                          style: TextStyle(color: ColorConst.fivecolor),
                        )),
                      ),
                    ),
                    SizedBox(
                      height: w * 0.03,
                    ),
                    Text("Forgot Password?",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: ColorConst.secandarycolor,
                        )),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            indent: w * 0.025,
                            endIndent: w * 0.025,
                            color: ColorConst.secandarycolor,
                          ),
                        ),
                        Text("or",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: ColorConst.secandarycolor,
                            )),
                        Expanded(
                          child: Divider(
                            indent: w * 0.025,
                            endIndent: w * 0.025,
                            color: ColorConst.secandarycolor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: w * 0.03,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => join_facebook(),
                            ));
                      },
                      child: Container(
                        width: w * 0.7,
                        height: w * 0.1,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(w * 0.04),
                            color: ColorConst.fivecolor,
                            border: Border.all(color: ColorConst.primaryColor)),
                        child: Center(
                            child: Text(
                          "Create new Facebook account",
                          style: TextStyle(color: ColorConst.secandarycolor),
                        )),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
