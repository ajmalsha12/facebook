import 'package:facebook/Notifications.dart';
import 'package:facebook/color_const.dart';
import 'package:facebook/friend_requests.dart';
import 'package:facebook/home_screen_2.dart';
import 'package:facebook/image_const.dart';
import 'package:facebook/menu.dart';
import 'package:facebook/messanger.dart';
import 'package:facebook/messanger_swipe.dart';
import 'package:facebook/personal_profile.dart';
import 'package:facebook/watch_video_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import 'main.dart';

class home_screen_1 extends StatefulWidget {
  const home_screen_1({super.key});

  @override
  State<home_screen_1> createState() => _home_screen_1State();
}

class _home_screen_1State extends State<home_screen_1> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: ColorConst.fivecolor,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GradientText("facebook",
                  style: TextStyle(
                    fontWeight: FontWeight.w600
                  ),
                  colors: [ColorConst.primaryColor,ColorConst.eigthcolor],
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => messanger_swipe(),));
                    setState(() {

                    });
                  },
                  child: SvgPicture.asset(
                    ImageConst.fb,
                    height: w*0.09,
                  ),
                )

              ],

            ),
            bottom: TabBar(
              labelColor: ColorConst.primaryColor,
              unselectedLabelColor: ColorConst.secandarycolor,
              tabs: [
                Tab(
                  child: SvgPicture.asset(ImageConst.home),

                ),
                Tab(
                  child: SvgPicture.asset(ImageConst.group),

                ),
                Tab(
                  child: SvgPicture.asset(ImageConst.personal),

                ),
                Tab(
                  child: SvgPicture.asset(ImageConst.video),

                ),
                Tab(
                  child: SvgPicture.asset(ImageConst.bell),

                ),
                Tab(
                  child: SvgPicture.asset(ImageConst.menu),

                ),

              ],

            ),
          ),
          body: TabBarView(
            children: [
              home_screen_2(),
              friend_requests(),
              personal_profile(),
              watch_video_screen(),
              Notifications(),
              menu(),
            ],
          ),
        ));
  }
}
