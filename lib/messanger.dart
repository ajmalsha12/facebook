import 'package:facebook/new_message.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';

import 'color_const.dart';
import 'image_const.dart';
import 'main.dart';

class messanger extends StatefulWidget {
  const messanger({super.key});

  @override
  State<messanger> createState() => _messangerState();
}

class _messangerState extends State<messanger> {
  TextEditingController name = TextEditingController();
  bool cont=false;

  get doNothing => null;
  List chate=[

    {
      "image":ImageConst.vishpatil,
      "text":"Vish Patil",
    },
    {
      "image":ImageConst.rakeshshetty,
      "text":"Rakesh Shetty",
    },
    {
      "image":ImageConst.kiranpawar,
      "text":"Kiran Pawar",
    },
    {
      "image":ImageConst.rockyparker,
      "text":"Rocky Parker",
    },
    {
      "image":ImageConst.karencastillo,
      "text":"Karen Castillo",
    },

  ];
  List chat1=[
    {
      "image1":ImageConst.rockyparker,
      "text1":"Rocky Parker",
      "text2":"You: Okay fine.  08:36 AM",
      "icon":ImageConst.tick
    },
    {
      "image1":ImageConst.kiranpawar,
      "text1":"Kiran Pawar",
      "text2":"You: Yes, Thanks!!   06:00 AM",
      "icon":ImageConst.tick
    },
    {
      "image1":ImageConst.chandanichampa,
      "text1":"Rocky Parker",
      "text2":"You: See you soon.   Sat",
      "icon":ImageConst.tick
    },
    {
      "image1":ImageConst.np5,
      "text1":"Rocky Parker",
      "text2":"Have a good day.   Fri",
      "icon":ImageConst.tick
    },
    {
      "image1":ImageConst.karencastillo,
      "text1":"Rocky Parker",
      "text2":"You: Ok, see you in Tor..   Thu",
      "icon":ImageConst.tick
    },
    {
      "image1":ImageConst.kiranpawar2,
      "text1":"Rocky Parker",
      "text2":"The business plan loo..   Thu",
      "icon":ImageConst.tick
    },
    {
      "image1":ImageConst.rockyparker,
      "text1":"Rocky Parker",
      "text2":"You: Okay fine.  08:36 AM",
      "icon":ImageConst.tick
    },
    {
      "image1":ImageConst.kiranpawar,
      "text1":"Rocky Parker",
      "text2":"You: Okay fine.  08:36 AM",
      "icon":ImageConst.tick
    },
    {
      "image1":ImageConst.dhanaghade,
      "text1":"Rocky Parker",
      "text2":"You: Okay fine.  08:36 AM",
      "icon":ImageConst.tick
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:  EdgeInsets.all(w*0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(ImageConst.profile,width: w*0.15,),
                        SizedBox(width: w*0.03,),
                        Text("Chats",style: TextStyle(
                            fontWeight: FontWeight.w600
                        ),)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            width: w * 0.08,
                            height: w * 0.08,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(w * 0.02),
                              color: ColorConst.thirdcolor,
                            ),
                            child: SvgPicture.asset(ImageConst.camera)),
                        SizedBox(width: w*0.03,),
                        Container(
                            width: w * 0.08,
                            height: w * 0.08,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(w * 0.02),
                              color: ColorConst.thirdcolor,
                            ),
                            child: SvgPicture.asset(ImageConst.edit)),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.all(w*0.04),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {

                          Navigator.push(context, MaterialPageRoute(builder: (context) => new_message(),));
                        },
                        child: Container(
                          width: w * 0.6,
                          height: w * 0.1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(w * 0.04),
                            color: ColorConst.fivecolor,
                          ),
                          child: Padding(
                            padding:  EdgeInsets.only(left: w*0.03),
                            child: Row(

                              children: [
                                SvgPicture.asset(ImageConst.search),
                                Text("Search")
                              ],
                            ),
                          ),
                        ),
                      ),

                      Container(
                          width: w * 0.3,
                          height: w * 0.09,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(w * 0.02),
                            color: ColorConst.lightgrey,
                          ),
                          child:Center(child: Text("Unread"))),
                    ]),
              ),
              Padding(
                padding:  EdgeInsets.all(w*0.03),
                child: Row(

                  children: [
                    Column(
                      children: [
                        Container(
                          height: w * 0.28,
                          width: w * 0.28,
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(w * 0.04),
                            color: ColorConst.thirdcolor,
                          ),
                          child: SvgPicture.asset(
                            ImageConst.videocall,
                            fit: BoxFit.fill,

                          ),
                        ),
                        Text("Create\n"
                            "video call")
                      ],
                    ),

                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(left:w*0.03),
                        height: w*0.4,
                        width: w*1,
                        color: ColorConst.fivecolor,
                        child: ListView.separated(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            physics: BouncingScrollPhysics(),
                            itemBuilder: (context, index) {
                              return Container(
                                height: w * 0.3,
                                width: w * 0.3,
                                // color: Colors.red,
                                child: Column(
                                  children: [
                                    Stack(
                                        children: [
                                          Container(
                                            height: w * 0.28,
                                            width: w * 0.5,

                                          ),
                                          Positioned(
                                            child: Container(
                                              height: w * 0.28,
                                              width: w * 0.35,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(w * 0.04),
                                                color: ColorConst.thirdcolor,
                                              ),
                                              child: Image.asset(
                                                chate[index]["image"],
                                                fit: BoxFit.fill,
                                              ),

                                            ),
                                          ),
                                          Positioned(
                                            top: w*0.23,left: w*0.25,
                                            child: CircleAvatar(
                                              backgroundColor:ColorConst.fivecolor,
                                              radius: w*0.03,
                                              child: CircleAvatar(

                                                backgroundColor: Colors.green,
                                                radius: w*0.02,
                                              ),
                                            ),
                                          )
                                        ] ),
                                    Text(chate[index]["text"],style: TextStyle(
                                        fontSize: w*0.03
                                    ),)
                                  ],
                                ),
                              );

                            },
                            separatorBuilder: (context, index) {
                              return SizedBox(width: w*0.03,);

                            },
                            itemCount: chate.length),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: w * 2,
                width: w * 1,
                color: ColorConst.fivecolor,
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Slidable(

                            key: UniqueKey(),
                            startActionPane: ActionPane(
                                motion: ScrollMotion(),
                                dismissible: DismissiblePane(onDismissed: () {}),
                                children: [
                                  SlidableAction(
                                    borderRadius: BorderRadius.circular(w*0.09),


                                    onPressed: doNothing,
                                    backgroundColor: ColorConst.fourthcolor,
                                    foregroundColor: ColorConst.secandarycolor,
                                    icon: Icons.camera_alt_outlined,

                                  ),
                                  SlidableAction(
                                    borderRadius: BorderRadius.circular(w*0.09),
                                    onPressed: doNothing,
                                    backgroundColor: ColorConst.fivecolor,
                                    foregroundColor: ColorConst.secandarycolor,
                                    icon: Icons.call,

                                  ),
                                  SlidableAction(
                                    borderRadius: BorderRadius.circular(w*0.09),
                                    onPressed: doNothing,
                                    backgroundColor: ColorConst.fivecolor,
                                    foregroundColor: ColorConst.secandarycolor,
                                    icon: Icons.videocam,

                                  ),
                                ]),
                            endActionPane: ActionPane(
                                motion: ScrollMotion(),
                                dismissible: DismissiblePane(onDismissed: () {}),
                                children: [
                                  SlidableAction(
                                    borderRadius: BorderRadius.circular(w*0.09),


                                    onPressed: doNothing,
                                    backgroundColor: ColorConst.fivecolor,
                                    foregroundColor: ColorConst.secandarycolor,
                                    icon:Icons.list_outlined,

                                  ),
                                  SlidableAction(
                                    borderRadius: BorderRadius.circular(w*0.09),
                                    onPressed: doNothing,
                                    backgroundColor: ColorConst.fivecolor,
                                    foregroundColor: ColorConst.secandarycolor,
                                    icon: CupertinoIcons.bell,

                                  ),
                                  SlidableAction(
                                    borderRadius: BorderRadius.circular(w*0.09),
                                    onPressed: doNothing,
                                    backgroundColor: Colors.red,
                                    foregroundColor: ColorConst.secandarycolor,
                                    icon: Icons.delete,

                                  ),
                                ]),

                              child: Container(
                                height: w * 0.22,
                                width: w * 1,

                                decoration: BoxDecoration(
                                  border: Border.all(color: ColorConst.fourthcolor),
                                  color: ColorConst.fivecolor,
                                ),
                                child: Column(children: [
                                  ListTile(
                                      leading: Image.asset(chat1[index]["image1"]),
                                      title: Row(
                                        children: [
                                          Text(
                                            chat1[index]["text1"],
                                            style: TextStyle(
                                                fontSize: w * 0.03,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                      subtitle: Row(
                                        children: [
                                          Text(
                                            chat1[index]["text2"],
                                            style: TextStyle(fontSize: w * 0.03),
                                          ),
                                        ],
                                      ),
                                      trailing:SvgPicture.asset(chat1[index]["icon"])
                                  ),
                                ])),

                          )],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: w * 0.03,
                      );
                    },
                    itemCount: chat1.length),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
