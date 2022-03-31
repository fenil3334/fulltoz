import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fulltoz/res/app_colors.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.bgColor,
      child: LayoutBuilder(
        builder: (context, constraint) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraint.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  children: <Widget>[
                    Stack(
                      children: [
                        Container(
                          height: 210,
                          width: MediaQuery.of(context).size.width,
                          color: AppColors.accentColors,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'total_balance'.tr,
                                style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w200,
                                    color: Colors.white70),
                              ),
                              Text(
                                "INR 0.00",
                                style: TextStyle(
                                    fontSize: 32,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w700,
                                    color: Colors.yellowAccent),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'hello'.tr,
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w200,
                                    color: Colors.white70),
                              ),
                              Text(
                                "Milan",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(top: 170, left: 14, right: 14),
                          child: Card(
                            margin: EdgeInsets.zero,
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 0,
                            child: Container(
                              height: 72,
                              child: Padding(
                                padding: EdgeInsets.only(left: 16, right: 16),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      'assets/images/won.png',
                                      height: 33,
                                      width: 33,
                                      color: AppColors.iconColor,
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 15),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'your_winnings'.tr,
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontFamily: "Poppins",
                                                  fontWeight: FontWeight.w700,
                                                  color:
                                                      AppColors.accentColors),
                                            ),
                                            Text(
                                              'money_you_won'.tr,
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontFamily: "Poppins",
                                                  fontWeight: FontWeight.w200,
                                                  color: AppColors.gray),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'INR 0.00',
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w800,
                                          fontSize: 17,
                                          color: AppColors.accentColors),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 34,
                      color: Colors.black12,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'playing_experience'.tr,
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w200,
                              fontSize: 13,
                              color: AppColors.black),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 16,
                        right: 16,
                        top: 14,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                  child: Card(
                                margin: EdgeInsets.zero,
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                elevation: 0,
                                child: Container(
                                  height: 70,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 16, right: 16),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/won.png',
                                          height: 33,
                                          width: 33,
                                          color: AppColors.iconColor,
                                        ),
                                        SizedBox(
                                          width: 14,
                                        ),
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "0",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    fontFamily: "Poppins",
                                                    fontWeight: FontWeight.w700,
                                                    color:
                                                        AppColors.accentColors),
                                              ),
                                              Text(
                                                'contest_won'.tr,
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    fontFamily: "Poppins",
                                                    fontWeight: FontWeight.w200,
                                                    color: AppColors.gray),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )),
                              SizedBox(
                                width: 14,
                              ),
                              Expanded(
                                  child: Card(
                                margin: EdgeInsets.zero,
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                elevation: 0,
                                child: Container(
                                  height: 70,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 16, right: 16),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/tickets.png',
                                          height: 33,
                                          width: 33,
                                          color: AppColors.iconColor,
                                        ),
                                        SizedBox(
                                          width: 14,
                                        ),
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "0",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    fontFamily: "Poppins",
                                                    fontWeight: FontWeight.w700,
                                                    color:
                                                        AppColors.accentColors),
                                              ),
                                              Text(
                                                'total_contest'.tr,
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    fontFamily: "Poppins",
                                                    fontWeight: FontWeight.w200,
                                                    color: AppColors.gray),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )),
                            ],
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Card(
                                margin: EdgeInsets.zero,
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                elevation: 0,
                                child: Container(
                                  height: 70,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 16, right: 16),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/vs.png',
                                          height: 33,
                                          width: 33,
                                          color: AppColors.iconColor,
                                        ),
                                        SizedBox(
                                          width: 14,
                                        ),
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "0",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    fontFamily: "Poppins",
                                                    fontWeight: FontWeight.w700,
                                                    color:
                                                        AppColors.accentColors),
                                              ),
                                              Text(
                                                'matches'.tr,
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    fontFamily: "Poppins",
                                                    fontWeight: FontWeight.w200,
                                                    color: AppColors.gray),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )),
                              SizedBox(
                                width: 14,
                              ),
                              Expanded(
                                  child: Card(
                                margin: EdgeInsets.zero,
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                elevation: 0,
                                child: Container(
                                  height: 70,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 16, right: 16),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/trophy.png',
                                          height: 33,
                                          width: 33,
                                          color: AppColors.iconColor,
                                        ),
                                        SizedBox(
                                          width: 14,
                                        ),
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "0",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    fontFamily: "Poppins",
                                                    fontWeight: FontWeight.w700,
                                                    color:
                                                        AppColors.accentColors),
                                              ),
                                              Text(
                                                'series'.tr,
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    fontFamily: "Poppins",
                                                    fontWeight: FontWeight.w200,
                                                    color: AppColors.gray),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )),
                            ],
                          ),
                          SizedBox(
                            height: 28,
                          ),
                          Card(
                            margin: EdgeInsets.zero,
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 0,
                            child: Container(
                              height: 70,
                              child: Padding(
                                padding: EdgeInsets.only(left: 16, right: 16),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/history.png',
                                      height: 33,
                                      width: 33,
                                      color: AppColors.iconColor,
                                    ),
                                    SizedBox(
                                      width: 14,
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'transaction_history'.tr,
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w700,
                                                color: AppColors.accentColors),
                                          ),
                                          Text(
                                            'where_mush_spent'.tr,
                                            style: TextStyle(
                                                fontSize: 11,
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w200,
                                                color: AppColors.gray),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
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
          );
        },
      ),
    );
  }
}
