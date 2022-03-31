import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fulltoz/models/home_model.dart';
import 'package:fulltoz/res/app_colors.dart';
import 'package:fulltoz/screens/account_statement.dart';
import 'package:fulltoz/screens/deposit_withdraw.dart';
import 'package:fulltoz/screens/edit_profile.dart';
import 'package:fulltoz/utils/locale_constants.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DrawerView extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  DrawerView({required this.scaffoldKey, Key? key}) : super(key: key);

  @override
  _DraerViewState createState() => _DraerViewState();
}

class _DraerViewState extends State<DrawerView> {
  final List<HomeModel> _listViewData = [
    HomeModel("assets/images/statement.png", 'dashboard'.tr),
    HomeModel("assets/images/editprofile.png", 'edit_profile'.tr),
    HomeModel("assets/images/deposit.png", 'deposit_withdraw'.tr),
    HomeModel("assets/images/statement.png", 'history'.tr),
    HomeModel("assets/images/changepassword.png", 'change_password'.tr),
    HomeModel("assets/images/language.png", 'changelang'.tr),
    HomeModel("assets/images/logout.png", 'logout'.tr),
  ];
  int _currentSelected = 0;



  final List locale =[
    {'name':'ENGLISH','locale': Locale('en','US')},
    {'name':'हिंदी','locale': Locale('hi','IN')},
  ];
  updateLanguage(Locale locale) async{
    Get.back();
    print("------$locale");
    print("==========${locale.toString()}");
    Get.updateLocale(locale);
    SharedPreferences prefs =  await SharedPreferences.getInstance() ;
    prefs.setString('LANGUAGE', locale.toString());


    setLocale(locale.languageCode, locale.toString());
  }

  buildLanguageDialog(BuildContext context){
    showDialog(context: context,
    //    barrierColor: Color(0x640000FF),
        builder: (builder){
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),),
            child: Container(
              height: 168,


              child: Padding(
                padding: EdgeInsets.all(18),
                child: Column(
                  children: [
                    Text('Choose Your Language',style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w600,
                        color: Colors.black
                    ),),

                    SizedBox(height: 12,),
                    Container(
                        width: double.maxFinite,
                        child : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: (){
                                updateLanguage(Locale('en','US'));
                              },
                              child: Container(
                                height: 44,
                                width: double.infinity,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'ENGLISH',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black87
                                    ),
                                  ),
                                ),),
                            ),

                            Container(
                              height: 0.7,
                              width: double.infinity,
                              color: Colors.black12,
                            ),

                            InkWell(
                              onTap: (){
                                updateLanguage(Locale('hi','IN'));
                              },
                              child: Container(
                                height: 44,
                                width: double.infinity,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'हिंदी',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black87
                                    ),
                                  ),
                                ),),
                            ),
                          ],
                        )

                    ),
                  ],

                ),
              ),
            ),
          );
        }
    );
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: const Color(0xFFEF233E),
      margin: EdgeInsets.only(right: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 50),
            child: Stack(
              children: [
                Image.asset(
                  "assets/images/logo_red.png",
                  height: 96.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 106.0,
                      ),
                      Image.asset("assets/images/my_contestts.png",
                          height: 40.0, width: 40.0),
                      Padding(
                        padding: EdgeInsets.only(top: 9.0),
                      ),
                      Text(
                        "Milan Kyada",
                        style: TextStyle(
                          fontSize: 13.0,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 80,
                      ),
                      child: InkWell(
                        onTap: () {
                          widget.scaffoldKey.currentState!.openEndDrawer();
                        },
                        child: Image.asset(
                          'assets/images/left_close_icon.png',
                          height: 29.0,
                          width: 35.0,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ))
              ],
            ),
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.only(top: 20),
            child: ListView.builder(
              itemCount: _listViewData.length,
              physics: BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      _currentSelected = index;

                      if (_currentSelected == 1) {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => EditProfile()));
                      } else if (_currentSelected == 2) {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DepositEithdraw()));
                      } else if (_currentSelected == 3) {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => AccountStatement()));
                      } else if (_currentSelected == 5) {
                        buildLanguageDialog(context);
                      }else if (_currentSelected == 6) {
                        showAlertDialog(context);
                      }
                    });
                  },
                  child: Container(
                    decoration: _currentSelected == index
                        ? BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                const Color(0xFF99AEACAC),
                                const Color(0xFF02D2D2D2)
                              ],
                            ),
                          )
                        : null,
                    height: 50,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Row(
                        children: [
                          Image.asset(_listViewData[index].image,
                              width: 21,
                              height: 21,
                              color: _currentSelected == index
                                  ? Colors.white
                                  : Colors.white54),
                          Padding(padding: EdgeInsets.only(left: 12.0)),
                          Text(
                            _listViewData[index].name,
                            style: TextStyle(
                                color: _currentSelected == index
                                    ? Colors.white
                                    : Colors.white54,
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w200,
                                fontSize: 13.0),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          )),
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "Version 1.0.0",
                style: TextStyle(
                    color: Colors.white60,
                    fontSize: 11,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showAlertDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)), //this right here
            child: Container(
              height: 150,
              child: Padding(
                padding: const EdgeInsets.only(left: 18,right: 18),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('logout'.tr,
                    style: TextStyle(
                      fontSize: 17,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700,
                      color: AppColors.black
                    ),
                    ),


                    SizedBox(height: 10,),


                    Text('are_you_sure_logout'.tr,
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w200,
                          color: AppColors.black
                      ),
                    ),


                    SizedBox(height: 24,),


                   Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       GestureDetector(
                         onTap: (){
                           Navigator.of(context).pop();
                         },
                         child: Text('lcancel'.tr,
                           style: TextStyle(
                               fontSize: 13,
                               fontFamily: "Poppins",
                               fontWeight: FontWeight.w600,
                               color: AppColors.black
                           ),
                         ),
                       ),



                       SizedBox(width: 23,),

                       GestureDetector(
                         onTap: (){
                           if (Platform.isIOS) {
                             try {
                               exit(0);
                             } catch (e) {
                               SystemNavigator.pop(); // for IOS, not true this, you can make comment this :)
                             }
                           } else {
                             try {
                               SystemNavigator.pop(); // sometimes it cant exit app
                             } catch (e) {
                               exit(0); // so i am giving crash to app ... sad :(
                             }
                           }
                         },
                         child: Text('lok'.tr,
                           style: TextStyle(
                               fontSize: 13,
                               fontFamily: "Poppins",
                               fontWeight: FontWeight.w600,
                               color: AppColors.black
                           ),
                         ),
                       ),
                     ],
                   )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
