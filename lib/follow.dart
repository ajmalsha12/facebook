import 'package:facebook/color_const.dart';
import 'package:flutter/material.dart';

class follow extends StatefulWidget {
  const follow({super.key});

  @override
  State<follow> createState() => _followState();
}

class _followState extends State<follow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Follow",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 100,color: ColorConst.secandarycolor),))
        ],
      ),
    );
  }
}
