import 'package:facebook/Profil_Login.dart';
import 'package:facebook/Splash_Screen.dart';
import 'package:facebook/home_screen_1.dart';
import 'package:facebook/join_facebook.dart';
import 'package:facebook/messanger.dart';
import 'package:facebook/messanger_swipe.dart';
import 'package:facebook/what_is_your_gender.dart';
import 'package:facebook/what_is_your_name.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
var w;
var h;
void main(){
  runApp(facebook());
}class facebook extends StatefulWidget {
  const facebook({super.key});

  @override
  State<facebook> createState() => _facebookState();
}

class _facebookState extends State<facebook> {
  @override
  Widget build(BuildContext context) {
    w=MediaQuery.of(context).size.width;
    h=MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash_Screen(),
      theme: ThemeData(
        textTheme: GoogleFonts.radleyTextTheme(),
      ),
    );
  }
}
