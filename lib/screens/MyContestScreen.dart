import 'package:flutter/material.dart';
import 'package:fulltoz/res/app_colors.dart';
import 'package:fulltoz/screens/mycontest_cricket.dart';
import 'package:fulltoz/screens/soccer_tab.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

import 'basketball_tab.dart';
import 'cricket_tab.dart';

class MyContestScreen extends StatefulWidget {
  const MyContestScreen({Key? key}) : super(key: key);

  @override
  _MyContestScreenState createState() => _MyContestScreenState();
}

class _MyContestScreenState extends State<MyContestScreen> with TickerProviderStateMixin{
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this)
      ..addListener(() {
        setState(() {
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.bgColor,
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Align(
              child: Container(
                height: 42,
                child: TabBar(
                  controller: tabController,
                  labelColor: AppColors.accentColors,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: AppColors.accentColors,
                  indicator: BoxDecoration(
                    border: Border(
                      bottom:
                      BorderSide(color: AppColors.accentColors, width: 2.0),
                    ),
                  ),
                  tabs: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/cricket.png",
                          width: 22,
                          height: 22,
                          color: tabController.index == 0
                              ? AppColors.accentColors
                              : Colors.grey,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          'cricket'.tr,
                          style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w800),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset("assets/images/football.png",
                            width: 22,
                            height: 22,
                            color: tabController.index == 1
                                ? AppColors.accentColors
                                : Colors.grey),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          'soccer'.tr,
                          style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w800),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset("assets/images/basketball.png",
                            width: 22,
                            height: 22,
                            color: tabController.index == 2
                                ? AppColors.accentColors
                                : Colors.grey),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          'basketball'.tr,
                          style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w800),
                        )
                      ],
                    )
                  ],
                  isScrollable: true,
                ),
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              physics: BouncingScrollPhysics(),
              children: [MyCOntestCricket(), SoccerTab(), BasketballTab()],
            ),
          )
        ],
      ),
    );
  }
}
