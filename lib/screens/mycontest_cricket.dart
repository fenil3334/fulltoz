import 'package:flutter/material.dart';
import 'package:fulltoz/res/app_colors.dart';
import 'package:fulltoz/screens/basketball_tab.dart';
import 'package:fulltoz/screens/soccer_tab.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class MyCOntestCricket extends StatefulWidget {
  const MyCOntestCricket({Key? key}) : super(key: key);

  @override
  _MyCOntestCricketState createState() => _MyCOntestCricketState();
}

class _MyCOntestCricketState extends State<MyCOntestCricket>
    with SingleTickerProviderStateMixin {
  int activePageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Container(
                height: 36,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white,
                ),
                child: TabBar(
                    labelColor: Colors.white,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: AppColors.accentColors),
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Text(
                        'live'.tr,
                        style: TextStyle(
                          fontSize: 11,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        'upcoming'.tr,
                        style: TextStyle(
                          fontSize: 11,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        'completed'.tr,
                        style: TextStyle(
                          fontSize: 11,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ]),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [SoccerTab(), SoccerTab(), BasketballTab()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
