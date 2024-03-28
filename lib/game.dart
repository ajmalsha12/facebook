import 'package:facebook/color_const.dart';
import 'package:flutter/material.dart';

class game extends StatefulWidget {
  const game({super.key});

  @override
  State<game> createState() => _gameState();
}

class _gameState extends State<game> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Game",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 100,color: ColorConst.secandarycolor),))
        ],
      ),
    );
  }
}
