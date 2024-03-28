import 'package:facebook/what_is_your_birthday.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'color_const.dart';
import 'image_const.dart';
import 'main.dart';

class what_is_your_name extends StatefulWidget {
  const what_is_your_name({super.key});

  @override
  State<what_is_your_name> createState() => _what_is_your_nameState();
}

class _what_is_your_nameState extends State<what_is_your_name> {
  final formKey = GlobalKey<FormState>();
  TextEditingController NameCondroller = TextEditingController();
  TextEditingController NameCondrollerl = TextEditingController();

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
          title: Text(" Create account",
              style: TextStyle(
                color: ColorConst.secandarycolor,
                fontWeight: FontWeight.w400,
                fontSize: 14,
              )), // TextStyle, Text
        ), // AppBar
        body: Padding(
            padding: EdgeInsets.all(w * 0.02),
            child: Form(
                key: formKey,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(children: [
                        Text(
                          "Whay's your name?",
                          style: TextStyle(
                            fontSize: 18,
                            height: w * 0.02,
                            fontWeight: FontWeight.w600,
                          ),
                        ), // TextStyle, Text
                        Text(
                          "Enter the name you use in real life.",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: ColorConst.thirdcolor,
                          ),
                        ), // TextStyle,Text
                        SizedBox(
                          height: w * 0.07,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: w * 0.07,
                            ),
                            Expanded(
                              child: TextFormField(
                                textAlign: TextAlign.start,
                                controller: NameCondroller,
                                keyboardType: TextInputType.text,
                                textInputAction: TextInputAction.next,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 14),
                                decoration: InputDecoration(
                                    labelText: "last name",
                                    labelStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    suffixIcon: InkWell(
                                      onTap: () {
                                        NameCondroller.text="";
                                        setState(() {

                                        });
                                      },
                                        child: Icon(Icons.clear)),
                                    hintText: "enter name",
                                    hintStyle: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14),
                                    enabledBorder: UnderlineInputBorder(),
                                    focusedBorder: UnderlineInputBorder()),
                              ),
                            ), //Expanded
                            SizedBox(
                              width: w * 0.08,
                            ),
                            Expanded(
                              child: TextFormField(
                                textAlign: TextAlign.start,
                                controller: NameCondrollerl,
                                keyboardType: TextInputType.text,
                                textInputAction: TextInputAction.next,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 14),
                                // TextStyle
                                decoration: InputDecoration(
                                    labelText: "last name",
                                    labelStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    suffixIcon: InkWell(
                                      onTap: () {
                                        NameCondroller.text="";
                                        setState(() {

                                        });
                                      },
                                        child: Icon(Icons.clear)),
                                    hintText: "enter name",
                                    hintStyle: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14),
                                    enabledBorder: UnderlineInputBorder(),
                                    focusedBorder: UnderlineInputBorder()),
                              ), // TextFormField
                            ), // Expanded
                            SizedBox(
                              width: w * 0.07,
                            ),
                          ],
                        ),
                      ]),
                      InkWell(
                        onTap: () {
                          if (NameCondroller.text != "" &&
                              NameCondrollerl.text != "" &&
                              formKey.currentState!.validate()) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => what_is_your_birthday(),
                                ));
                          } else {
                            NameCondroller.text == ""
                                ? ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        content:
                                            Text("please enter first name")))
                                : NameCondroller.text == ""
                                    ? ScaffoldMessenger.of(context)
                                        .showSnackBar(SnackBar(
                                            content:
                                                Text("please enter last name")))
                                    : ScaffoldMessenger.of(context)
                                        .showSnackBar(SnackBar(
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
                            "Next",
                            style: TextStyle(
                              color: ColorConst.fivecolor,
                            ),
                          )),
                        ),
                      )
                    ]))));
  }
}
