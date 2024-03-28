import 'package:facebook/color_const.dart';
import 'package:facebook/follow.dart';
import 'package:facebook/for_you.dart';
import 'package:facebook/game.dart';
import 'package:facebook/live.dart';
import 'package:facebook/music.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class watch_video_screen extends StatefulWidget {
  const watch_video_screen({super.key});

  @override
  State<watch_video_screen> createState() => _watch_video_screenState();
}

class _watch_video_screenState extends State<watch_video_screen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
            body: Padding(
          padding: EdgeInsets.only(left: w * 0.03, right: w * 0.03),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Watch",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  )
                ],
              ),
              SizedBox(
                height: w * 0.02,
              ),
              Container(
                width: w * 2,
                height: w * 0.1,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(w * 0.03),
                    gradient: LinearGradient(colors: [
                      ColorConst.primaryColor,
                      ColorConst.fourthcolor
                    ])),
                child: TabBar(
                  indicatorColor: ColorConst.fivecolor,
                  tabs: [
                    Tab(
                      child: Text(
                        "Foryoy",
                        style: TextStyle(fontSize: w * 0.03),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Live",
                        style: TextStyle(fontSize: w * 0.03),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Music",
                        style: TextStyle(fontSize: w * 0.03),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Game",
                        style: TextStyle(fontSize: w * 0.03),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Follow",
                        style: TextStyle(fontSize: w * 0.03),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                  child: TabBarView(
                children: [for_you(), live(), music(), game(), follow()],
              ))
            ],
          ),
        )));
  }
}
