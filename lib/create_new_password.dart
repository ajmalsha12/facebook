import 'package:facebook/Profil_Login.dart';
import 'package:facebook/color_const.dart';
import 'package:facebook/home_screen_1.dart';
import 'package:facebook/image_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'main.dart';

class create_new_password extends StatefulWidget {
  const create_new_password({super.key});

  @override
  State<create_new_password> createState() => _create_new_passwordState();
}

class _create_new_passwordState extends State<create_new_password> {
  final formKey = GlobalKey<FormState>();
  final passwordValidation =
      RegExp(r"^(?=.?[A-Z])(?=.?[a-z])(?=.?[0-9])(?=.?[!@#\$&*~]).{8,}$");
  TextEditingController passwordCondroller = TextEditingController();

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
        title: Text("Reset Password",
            style: TextStyle(
              color: ColorConst.secandarycolor,
              fontWeight: FontWeight.w400,
              fontSize: 14,
            )),
      ),
      body: Padding(
        padding: EdgeInsets.all(w * 0.03),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    "Create new password",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: ColorConst.secandarycolor),
                  ),
                  Text(
                    "You will use this password to access your account.",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: ColorConst.thirdcolor),
                  ),
                  Text(
                    "  Enter a combination of at least six numbers, letters",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: ColorConst.thirdcolor),
                  ),
                  Text(
                    " and punctuation marks.",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: ColorConst.thirdcolor),
                  ),
                ],
              ),
              TextFormField(
                controller: passwordCondroller,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  // if (!passwordValidation.hasMatch(value!)) {
                  //   return "Enter valid password";
                  // } else {
                  //   return null;
                  // }
                },
                decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                  hintText: "enter password",
                  hintStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  suffixIcon: InkWell(
                      onTap: () {
                        passwordCondroller.text = "";
                        setState(() {});
                      },
                      child: Icon(Icons.clear)),
                  enabledBorder: UnderlineInputBorder(),
                  focusedBorder: UnderlineInputBorder(),
                ),
              ),
              InkWell(
                onTap: () {
                  if (passwordCondroller.text != "" &&
                      formKey.currentState!.validate()) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => home_screen_1(),
                        ));
                  } else {
                    passwordCondroller.text == ""
                        ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("please enter your password")))
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
                    "Login",
                    style: TextStyle(color: ColorConst.fivecolor),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
