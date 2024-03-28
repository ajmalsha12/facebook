import 'package:facebook/color_const.dart';
import 'package:facebook/image_const.dart';
import 'package:facebook/login_screen_1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'main.dart';

class finishing_signing_up extends StatefulWidget {
  const finishing_signing_up({super.key});

  @override
  State<finishing_signing_up> createState() => _finishing_signing_upState();
}

class _finishing_signing_upState extends State<finishing_signing_up> {
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
        title: Text(" Terms & Privacy",
            style: TextStyle(
              color: ColorConst.secandarycolor,
              fontWeight: FontWeight.w400,
              fontSize: 14,
            )),
      ),
      body: Padding(
        padding: EdgeInsets.all(w * 0.03),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Center(
                    child: Text("Finishing signing up",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        )),
                  ),
                  SizedBox(
                    height: w * 0.03,
                  ),
                  Center(
                    child: Text("By tapping Sign up, you agree to our ",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: ColorConst.thirdcolor,
                        )),
                  ),
                  Center(
                    child: Text("Terms, Data Policy and Cookies Policy ",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: ColorConst.primaryColor,
                        )),
                  ),
                ],
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => login_screen_1(),
                        ),
                        (route) => false,
                      );
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
                        "Sign UP",
                        style: TextStyle(color: ColorConst.fivecolor),
                      )),
                    ),
                  ),
                  SizedBox(
                    height: w * 0.04,
                  ),
                  Center(
                    child: Text("Sign up without updating my contact ",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: ColorConst.primaryColor,
                        )),
                  ),
                ],
              ),
              Center(
                child: Container(
                  child: Text(
                      "The Facebook company is now Meta. While our company name is changing, we are continuing to offer the same products, includingthe Facebook app from Meta. Our Data Policy and Terms of Service remain in effect, and this name change does not affect how we use or share data. Learn more about Meta and our vision for the metaverse. ",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: ColorConst.secandarycolor,
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
