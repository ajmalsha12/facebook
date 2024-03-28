import 'package:facebook/blank_page.dart';
import 'package:facebook/messanger.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class messanger_swipe extends StatefulWidget {
  const messanger_swipe({super.key});

  @override
  State<messanger_swipe> createState() => _messanger_swipeState();
}

class _messanger_swipeState extends State<messanger_swipe> {
  int selact=0;
  List aa=[
    messanger(),
    blank_page(),
    blank_page()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            onTap: (value) {
              selact=value!;
              setState(() {

              });

            },
            currentIndex: selact,
            selectedItemColor: Colors.blue,

            showUnselectedLabels: true,
            showSelectedLabels: true,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.messenger_outlined),
                  label: ""),
              BottomNavigationBarItem(
                  icon:Icon(Icons.groups),
                  label: ""),
              BottomNavigationBarItem(
                  icon:Icon(CupertinoIcons.compass_fill),
                  label: ""),
            ]),

        body: aa[selact],
      ),
    );
  }
}

