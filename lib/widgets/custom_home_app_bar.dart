import 'package:flutter/material.dart';
import 'package:fulltoz/res/app_colors.dart';
import 'package:fulltoz/screens/notification_screen.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  bool selected=false;
  final GlobalKey<ScaffoldState> scaffoldKey;

  List<String> filterlist = [
    "All",
    "India Cricket T10",
    "European Cricket T10",
    "Trinidad T10 Blast",
    "Women World Cup",
    "ACA Womens T20",
    "Australia Women ODD",
    "England tour of West Indies",
  ];
  List<bool> isChecked = List.generate(8, (index) => false);



  HomeAppBar({
    this.height = kToolbarHeight,
    required this.scaffoldKey,
  });



  void onClick(){}

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: preferredSize.height,
        color: AppColors.accentColors,
        alignment: Alignment.center,
        child: Container(
          color: AppColors.accentColors,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 14),
                    child: InkWell(
                      onTap: () {
                        scaffoldKey.currentState!.openDrawer();
                      },
                      child: Image.asset(
                        'assets/images/nav_menu.png',
                        color: Colors.white,
                        width: 22,
                        height: 22,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          _show_Bottomsheet(context);
                        },
                        child: Padding(
                          padding: EdgeInsets.only(right: 18),
                          child: Image.asset(
                            'assets/images/filter_icon.png',
                            color: Colors.white,
                            width: 20,
                            height: 20,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => NotificationScreen()));
                        },
                        child: Padding(
                          padding: EdgeInsets.only(right: 14),
                          child: Image.asset(
                            'assets/images/notification_icon.png',
                            color: Colors.white,
                            width: 20,
                            height: 20,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Image.asset(
                'assets/images/nav_icon.png',
                width: 100,
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _show_Bottomsheet(BuildContext ctx) {

    showModalBottomSheet(
        elevation: 10,
        backgroundColor: Colors.white,
        context: ctx,
        builder: (ctx) => Container(
              width: MediaQuery.of(ctx).size.width,
              height: 280,
              color: Colors.white54,
              child: Column(
                children: [
                  Container(
                    color: AppColors.accentColors,
                    height: 46,
                    child: Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "assets/images/refresh.png",
                            height: 18,
                            width: 18,
                            color: Colors.white,
                          ),
                          Expanded(
                              child: Center(
                            child: Text(
                              'filters'.tr,
                              style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white),
                            ),
                          )),
                          Text(
                            'done'.tr,
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w800,
                                color: Colors.yellow),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(child: ListView.builder(
                    itemCount: filterlist.length,
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Container(
                          height: 48,
                          child: Padding(
                            padding: EdgeInsets.only(left: 14, right: 14),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  filterlist[index].toString(),
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),

                                InkWell(
                                  onTap: () {

                                  },
                                  child: Container(
                                    height: 21,
                                    width: 21,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle, color: selected ? Colors.green : Colors.white,
                                        border: Border.all(width: 1, color: Colors.green)
                                    ),
                                    child: Align(
                                        child: selected ? Icon(
                                          Icons.check,
                                          size: 12.0,
                                          color: Colors.white,
                                        ) : Container()
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 0.2,
                          color: Colors.black26,
                        ),
                      ],
                    );
                  }))
                ],
              ),
            ));
  }


}
