import 'package:facebook/Profil_Login.dart';
import 'package:facebook/image_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import 'color_const.dart';
import 'main.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  void initState() {
    Future.delayed(Duration(seconds: 2)).then((value) => Navigator.push(context, MaterialPageRoute(builder: (context) => Profil_Login(),)));
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: w * 0.8,
          ),
          Container(
            width: w * 1.2,
            height: w * 1.2,
            child: Column(
              children: [
                Container(
                  height: w * 0.25,
                  width: w * 0.2,
                  child: Image.asset(ImageConst.Logo1),
                ),
                GradientText(
                  "facebook",
                  colors: [ColorConst.primaryColor, ColorConst.fourthcolor],
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: w * .08,
                  ),
                ),
                SizedBox(
                  height: w * 0.60,
                ),
                Container(
                  height: w * 0.25,
                  width: w * 0.2,
                  child: Image.asset(ImageConst.metalogo),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
