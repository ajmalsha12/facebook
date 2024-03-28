import 'package:facebook/color_const.dart';
import 'package:flutter/material.dart';

class music extends StatefulWidget {
  const music({super.key});

  @override
  State<music> createState() => _musicState();
}

class _musicState extends State<music> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Music",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 100,color: ColorConst.secandarycolor),))
        ],
      ),
    );
  }
}
