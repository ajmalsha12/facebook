import 'package:facebook/image_const.dart';
import 'package:facebook/what_is_your_gender.dart';
import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker_widget/flutter_holo_date_picker_widget.dart';
import 'package:flutter_svg/svg.dart';

import 'color_const.dart';
import 'main.dart';

class what_is_your_birthday extends StatefulWidget {
  const what_is_your_birthday({super.key});

  @override
  State<what_is_your_birthday> createState() => _what_is_your_birthdayState();
}

class _what_is_your_birthdayState extends State<what_is_your_birthday> {
  DateTime? _selectedDate;
  int age=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: Center(
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
              setState(() {

              });
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
        title: Text(" Birthday",
            style: TextStyle(
              color: ColorConst.secandarycolor,
              fontWeight: FontWeight.w400,
              fontSize: 14,
            )),
      ),
      body: Container(
        height: h * 1,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    "What’s your birthday?",
                    style: TextStyle(
                      height: w * 0.01,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: ColorConst.secandarycolor,
                    ),
                  ),
                  Text(
                    "Choose your date of birth.",
                    style: TextStyle(
                      height: w * 0.006,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: ColorConst.thirdcolor,
                    ),
                  ),
                  Text(
                    "You can always make this private later.",
                    style: TextStyle(
                      height: w * 0.006,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: ColorConst.thirdcolor,
                    ),
                  ),
                ],
              ),
              Container(
                width: w * 0.67,
                child: DatePickerWidget(
                  looping: false,
                  firstDate: DateTime(1990, 1, 1),
                  lastDate: DateTime(2024),
                  initialDate: DateTime.now(),
                  dateFormat: "dd/MMMM/yyyy",
                  //
                  onChange: (DateTime newDate, _) {
                    age=DateTime.now().difference(newDate).inDays~/365;
                    setState(() {
                      // _selacteddate=newDate;
                    });
                    print(_selectedDate);
                  },
                  pickerTheme: DateTimePickerTheme(
                      backgroundColor: Colors.white24,
                      itemTextStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                      dividerColor: Colors.black),
                ),
              ),
              Text(
                "${age??0} Years old",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => what_is_your_gender(),
                      ));
                },
                child: Container(
                  width: w * 0.7,
                  height: w * 0.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(w * 0.04),
                    color: ColorConst.fourthcolor,
                  ),
                  child: Center(
                      child: Text(
                    "Next",
                    style: TextStyle(color: ColorConst.fivecolor),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
