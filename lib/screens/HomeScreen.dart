import 'package:flutter/material.dart';
import 'package:fulltoz/res/app_colors.dart';
import 'package:fulltoz/screens/basketball_tab.dart';
import 'package:fulltoz/screens/cricket_tab.dart';
import 'package:fulltoz/screens/soccer_tab.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
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
              children: [CricketTab(), SoccerTab(), BasketballTab()],
            ),
          )
        ],
      ),
    );
  }
}
