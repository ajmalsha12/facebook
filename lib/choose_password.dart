import 'package:facebook/finishing_signing_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'color_const.dart';
import 'image_const.dart';
import 'main.dart';

class choose_password extends StatefulWidget {
  const choose_password({super.key});

  @override
  State<choose_password> createState() => _choose_passwordState();
}

class _choose_passwordState extends State<choose_password> {
  final formkey=GlobalKey<FormState>();
  final validatePassword= RegExp(r'^(?=.?[A-Z])(?=.?[a-z])(?=.?[0-9])(?=.?[!@#\$&*~]).{8,}$');
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar (
          elevation: 1,
          leading: Center(
            child: InkWell (onTap: () {
              Navigator.pop(context);
            },
              child: Container(
                width: w*10,
                height:w*0.05,
                child: SvgPicture.asset (ImageConst.Shape, color: ColorConst.secandarycolor,
                ),
              ),
            ),
          ),
          backgroundColor: ColorConst.fivecolor,
          title: Text ("Password",style: TextStyle(
            color: ColorConst.secandarycolor,
            fontWeight: FontWeight. w400,
            fontSize: 14,
          )), // TextStyle, Text
        ),
        body:
        Padding(
            padding: EdgeInsets.all(w*0.07),
            child: Form(
              key: formkey,
              child: Column(
                  children: [
                    Row( mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Choose a password",style: TextStyle(
                          height: w*0.01,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: ColorConst.secandarycolor,

                        ),),

                      ],
                    ),
                    Text("Create a password at least with 6 chaeacters.\n It should be something others couldn’t guess. "),

                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        // if(validatePassword.hasMatch(value!)){
                        //   return null;
                        // }
                        // else{
                        //   return "Password must contain \n1 Uppercase\n1 Lowercase\n1 Number\n1 Special character";
                        // }
                      },
                      controller: password,
                      decoration: InputDecoration(
                          label: Text("Password"),

                          hintText: ("Type"),
                          suffixIcon: InkWell(
                              onTap:  () {
                                password.text="";
                                setState(() {

                                });

                              },
                              child: Icon(Icons.clear))),
                      obscureText: true,
                      obscuringCharacter: "*",
                    ),
                    SizedBox(height: w*0.07),
                    InkWell(
                      onTap: () {
                        if (
                        password.text.isNotEmpty &&
                            formkey.currentState!.validate()
                        ) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => finishing_signing_up(),
                              ));
                        }
                        else{

                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Enter valid details")));
                        }
                      },
                      child: Container(
                        width: w*0.7,
                        height: w*0.1,
                        decoration: BoxDecoration(
                          borderRadius:BorderRadius.circular(w*0.04),
                          gradient: LinearGradient(
                              colors:[ColorConst.primaryColor,
                                ColorConst.fourthcolor]),
                        ),
                        child: Center(child: Text("Next",style: TextStyle(
                            color: ColorConst.fivecolor
                        ),)),

                      ),
                    )
                  ]),
            )
        )
    );
  }
}
