import 'package:facebook/choose_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pinput/pinput.dart';

import 'color_const.dart';
import 'image_const.dart';
import 'main.dart';

class contact_number extends StatefulWidget {
  const contact_number({super.key});

  @override
  State<contact_number> createState() => _contact_numberState();
}

class _contact_numberState extends State<contact_number> {
  final formKey=GlobalKey<FormState>();
  final phoneValidation=RegExp(r"[0-9]{10}$");
  TextEditingController numberCondroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: InkWell(onTap: () {
          Navigator.pop(context);
        },
          child: Container(
            height: w*0.2,
            width: w*0.2,
            child: Center(
              child: SvgPicture.asset(ImageConst.Shape,color: ColorConst.secandarycolor,
              ),
            ),
          ),
        ),
        backgroundColor: ColorConst.fivecolor,
        title: Text(" mobile number",style: TextStyle(
          color: ColorConst.secandarycolor,
          fontWeight: FontWeight.w600,
          fontSize: w*0.04,
        )),
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding:  EdgeInsets.all(w*0.03),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Column(
                    children: [
                      Center(
                        child: Text("Enter your mobile number",style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        )),
                      ),
                    ],
                  ),
                  Center(
                    child: Text("Enter the mobile number where you can be reached. ",style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: ColorConst.thirdcolor
                    )),
                  ),
                  Center(
                    child: Text("No one else will see this on your profile ",style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: ColorConst.thirdcolor
                    )),
                  ),
                ],
              ),
              TextFormField(
                controller: numberCondroller,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(10),
                  FilteringTextInputFormatter.digitsOnly
                ],
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if(!phoneValidation.hasMatch(value!)) {
                    return "Enter valid number";
                  }else{
                    return null;
                  }
                },
                decoration:InputDecoration(
                  labelText: "number",

                  labelStyle: TextStyle(
                    fontWeight: FontWeight.w400,

                    fontSize: 14,
                  ),
                  hintText: "enter number",
                  hintStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,

                  ),
                  suffixIcon: InkWell(onTap: () {
                    numberCondroller.text="";
                    setState(() {

                    });
                  },
                      child: Icon(Icons.clear)),
                  enabledBorder: UnderlineInputBorder(

                  ),
                  focusedBorder: UnderlineInputBorder(

                  ),

                ),
              ),
              InkWell(onTap: () {
                if(phoneValidation.toString()!=""&&
                    formKey.currentState!.validate()
                ) {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => choose_password(),));
                }else{
                  phoneValidation.toString() == "" ? ScaffoldMessenger.of(
                      context).showSnackBar(SnackBar(content: Text(
                      "please enter your mobile number"))) :
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("enter your valid details")));
                }
              },
                child: Container(
                  width: w*0.7,
                  height: w*0.1,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(w*0.04),
                    gradient: LinearGradient(
                        colors:[ ColorConst.primaryColor,
                          ColorConst.fourthcolor]),
                  ),
                  child: Center(child: Text("Next",style: TextStyle(
                      color: ColorConst.fivecolor
                  ),)),

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
