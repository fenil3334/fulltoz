import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fulltoz/res/app_colors.dart';
import 'package:fulltoz/res/strings.dart';
import 'package:fulltoz/utils/CustomDropdownButton2.dart';
import 'package:fulltoz/utils/size_utils.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class CreateContest extends StatefulWidget {
  const CreateContest({Key? key}) : super(key: key);

  @override
  _CreateContestState createState() => _CreateContestState();
}

class _CreateContestState extends State<CreateContest> {
  String? selectedValue;
  List<String> items = [
    'Australia tour of India',
    'Australia Women ODD',
    'England tour of West Indies',
    'European Cricket League',
    'MCA T20',
    'Sri Lanka tour of India',
    'Trinidad T10 Blast',
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          body: Container(
            child: Column(
              children: [
                Container(
                  height: SizeUtils.verticalSize * 8.4,
                  color: AppColors.accentColors,
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 18),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context, true);
                          },
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Image.asset(
                              "assets/images/back_icon.png",
                              height: 18,
                              width: 18,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'create_contest'.tr,
                          style: TextStyle(
                              color: AppColors.white,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: SizeUtils.verticalSize * 3,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 18, right: 18),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              /* Text(
                              "Select League",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.w200),
                            ),*/
                              Row(
                                children: [
                                  Expanded(
                                      child: Column(
                                        children: [
                                          TextFormField(
                                            cursorColor: Colors.black54,
                                            textInputAction: TextInputAction.next,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontFamily: "Inter",
                                                fontWeight: FontWeight.w400),
                                            decoration: InputDecoration(
                                                labelText: "Min team size",
                                                border: InputBorder.none,
                                                prefixIconColor: Colors.black,
                                                labelStyle: new TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 15,
                                                )
                                            ),
                                            maxLines: 1,
                                          ),
                                          Container(
                                            height: 0.6,
                                            color: Colors.black26,
                                          )
                                        ],
                                      )),


                                  SizedBox(width: SizeUtils.horizontalSize*11,),

                                  Expanded(
                                      child: Column(
                                        children: [
                                          TextFormField(
                                            cursorColor: Colors.black54,
                                            textInputAction: TextInputAction.next,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontFamily: "Inter",
                                                fontWeight: FontWeight.w400),
                                            decoration: InputDecoration(
                                                labelText: "Max team size",
                                                border: InputBorder.none,
                                                prefixIconColor: Colors.black,
                                                labelStyle: new TextStyle(
                                                    color: Colors.black54,
                                                    fontSize: 15
                                                )
                                            ),
                                            maxLines: 1,
                                          ),
                                          Container(
                                            height: 0.6,
                                            color: Colors.black26,
                                          )
                                        ],
                                      )),

                                ],
                              ),



                              SizedBox(height: SizeUtils.verticalSize*1.9,),


                              Row(
                                children: [
                                  Expanded(
                                      child: Column(
                                        children: [
                                          TextFormField(
                                            cursorColor: Colors.black54,
                                            textInputAction: TextInputAction.next,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontFamily: "Inter",
                                                fontWeight: FontWeight.w400),
                                            decoration: InputDecoration(
                                                labelText: "Entry frr(INR)",
                                                border: InputBorder.none,
                                                prefixIconColor: Colors.black,
                                                labelStyle: new TextStyle(
                                                    color: Colors.black54,
                                                    fontSize: 15
                                                )
                                            ),
                                            maxLines: 1,
                                          ),
                                          Container(
                                            height: 0.6,
                                            color: Colors.black26,
                                          )
                                        ],
                                      )),


                                  SizedBox(width: SizeUtils.horizontalSize*11,),

                                  Expanded(
                                      child: Column(
                                        children: [
                                          TextFormField(
                                            cursorColor: Colors.black54,
                                            textInputAction: TextInputAction.next,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontFamily: "Inter",
                                                fontWeight: FontWeight.w400),
                                            decoration: InputDecoration(
                                                labelText: "No. of winners",
                                                border: InputBorder.none,
                                                prefixIconColor: Colors.black,
                                                labelStyle: new TextStyle(
                                                    color: Colors.black54,
                                                    fontSize: 15
                                                )
                                            ),
                                            maxLines: 1,
                                          ),
                                          Container(
                                            height: 0.6,
                                            color: Colors.black26,
                                          )
                                        ],
                                      )),

                                ],
                              ),


                              SizedBox(height: SizeUtils.verticalSize*1.9,),



                              Column(
                                children: [
                                  TextFormField(
                                    cursorColor: Colors.black54,
                                    textInputAction: TextInputAction.next,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontFamily: "Inter",
                                        fontWeight: FontWeight.w400),
                                    decoration: InputDecoration(
                                        labelText: "Contest name",
                                        border: InputBorder.none,
                                        prefixIconColor: Colors.black,
                                        labelStyle: new TextStyle(
                                            color: Colors.black54,
                                            fontSize: 15
                                        )
                                    ),
                                    maxLines: 1,
                                  ),
                                  Container(
                                    height: 0.6,
                                    color: Colors.black26,
                                  )
                                ],
                              ),


                              SizedBox(height: SizeUtils.verticalSize*2,),


                              Align(
                                alignment: Alignment.center,
                                child: RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: SizeUtils.horizontalSize * 3.4),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: "Prize Pool ",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.black87,
                                              fontFamily: "Inter",
                                              fontWeight: FontWeight.w300)),
                                      TextSpan(
                                          text: 'INR 0',
                                          style:
                                          TextStyle(
                                              color: AppColors.accentColors,
                                              fontSize: 16,
                                              fontFamily: "Inter",
                                              fontWeight: FontWeight.w700
                                          ))
                                    ],
                                  ),
                                ),
                              ),


                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                
                
                Container(
                  height: SizeUtils.verticalSize*6,
                  color: AppColors.accentColors,
                  
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("CREATE & SHARE",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w800
                    ),),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
