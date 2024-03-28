import 'package:facebook/color_const.dart';
import 'package:flutter/material.dart';

class live extends StatefulWidget {
  const live({super.key});

  @override
  State<live> createState() => _liveState();
}

class _liveState extends State<live> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Live",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 100,color: ColorConst.secandarycolor),))
        ],
      ),
    );
  }
}
