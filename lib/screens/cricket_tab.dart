import 'package:flutter/material.dart';
import 'package:fulltoz/models/cricketmodel.dart';
import 'package:fulltoz/res/app_colors.dart';
import 'package:fulltoz/screens/create_contest.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class CricketTab extends StatefulWidget {
  const CricketTab({Key? key}) : super(key: key);

  @override
  _CricketTabState createState() => _CricketTabState();
}

class _CricketTabState extends State<CricketTab> {
  List<CricketModel> cricketlist = [
    CricketModel('IND', 'SL', '03:17:32'),
    CricketModel('ALZ', 'MSK', '03:17:32'),
    CricketModel('OEX', 'VOCR', '03:17:32'),
    CricketModel('SCK', 'SPK', '03:17:32'),
    CricketModel('BLD', 'SLS', '03:17:32'),
    CricketModel('NOR', 'CPNJB', '03:17:32'),
    CricketModel('PAK', 'AUS', '03:17:32'),
    CricketModel('TIT', 'LIO', '03:17:32'),
    CricketModel('SPK', 'SCK', '03:17:32'),
    CricketModel('SLS', 'BLD', '03:17:32'),
  ];

  @override
  Widget build(BuildContext context) {


    return Container(
      padding: EdgeInsets.only(left: 14, top: 16, right: 14),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CreateContest()));
                  },
                  child: Container(
                    height: 38,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: AppColors.accentColors),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'create_contest'.tr,
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 14,
              ),
              Expanded(
                child: Container(
                  height: 38,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: AppColors.accentColors),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'join_contest'.tr,
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 18,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'upcoming_match'.tr,
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w800,
                  color: AppColors.accentColors,
                  fontSize: 13),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Expanded(
              child: ListView.builder(
                  padding: const EdgeInsets.only(bottom: 12),

                  itemCount: cricketlist.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext contex, int index) {
                    return Card(
                      margin: EdgeInsets.only(top: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: Colors.white,
                      elevation: 0,
                      child: Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 58,
                                    width: 58,
                                    decoration: new BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(color: Colors.black54),
                                      // image: new Image.asset(_image.)
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(2),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(100.0),
                                        child: Image.asset(
                                          "assets/images/ind.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment: Alignment.center,
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    cricketlist[index].team1,
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      fontFamily: "Poppins",
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      color: AppColors
                                                          .accentColors,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    "VS",
                                                    style: TextStyle(
                                                      fontSize: 9,
                                                      fontFamily: "Poppins",
                                                      fontWeight:
                                                          FontWeight.w200,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    cricketlist[index].team2,
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      fontFamily: "Poppins",
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      color: AppColors
                                                          .accentColors,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Text(
                                                cricketlist[index].time,
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontFamily: "Poppins",
                                                  fontWeight: FontWeight.w800,
                                                  color: Colors.blueAccent,
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                      height: 58,
                                      width: 58,
                                      decoration: new BoxDecoration(
                                        shape: BoxShape.circle,
                                        border:
                                            Border.all(color: Colors.black54),
                                        // image: new Image.asset(_image.)
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(2),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(100.0),
                                          child: Image.asset(
                                            "assets/images/aus.png",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      )),
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 0.8,
                              color: Colors.black12,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: 9, bottom: 9, left: 22),
                                child: Text(
                                  'Trinidad T10 Blast - T10',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: "Inter",
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
