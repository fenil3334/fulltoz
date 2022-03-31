import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fulltoz/screens/HomeScreen.dart';
import 'package:fulltoz/screens/MoreScreen.dart';
import 'package:fulltoz/screens/MyContestScreen.dart';
import 'package:fulltoz/screens/ProfileScreen.dart';
import 'package:fulltoz/utils/size_utils.dart';
import 'package:fulltoz/widgets/drawer_view.dart';
import 'package:fulltoz/res/app_colors.dart';
import 'package:fulltoz/widgets/custom_home_app_bar.dart';

class HomeActivity extends StatefulWidget {
  const HomeActivity({Key? key}) : super(key: key);

  @override
  _HomeActivityState createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  int _currentIndex = 0;
  late PageController _pageController;
  List<Widget> tabPages = [
    HomeScreen(),
    MyContestScreen(),
    HomeScreen(),
    ProfileScreen(),
    MoreScreen(),
  ];






  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });

    this._pageController.animateToPage(index,duration: const Duration(milliseconds: 500),curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    SizeUtils().sizeUnit(context);
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarColor: AppColors.accentColors,
      ),
      child: Scaffold(
        key: scaffoldKey,
        drawer: DrawerView(scaffoldKey: scaffoldKey),
        appBar: HomeAppBar(scaffoldKey: scaffoldKey),
        floatingActionButton: InkWell(
          onTap: (){
            print('=========>');
            setState(() {
              _currentIndex = 0;
            });
          },
          child: Container(
            height: 70,
            width: 70,
            padding: EdgeInsets.all(6),
            margin: const EdgeInsets.only(top: 14),
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: AppColors.accentColors),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset('assets/images/app_icon.png')),

          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        body: tabPages.elementAt(_currentIndex),

        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: AppColors.accentColors,
          unselectedItemColor: Colors.black.withOpacity(.60),
          selectedFontSize: 10,
          unselectedFontSize: 9,
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              title: const Text(
                'HOME',
                style: TextStyle(
                    fontSize: 9,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w700),
              ),
              icon: Padding(
                padding: EdgeInsets.all(2),
                child: Image.asset(
                  "assets/images/home.png",
                  height: 20,
                  width: 20,
                  color: _currentIndex == 0
                      ? AppColors.accentColors
                      : Colors.black,
                ),
              ),
            ),
            BottomNavigationBarItem(
              title: const Text(
                'MY CONTESTS',
                style: TextStyle(
                    fontSize: 9,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w700),
              ),
              icon: Padding(
                padding: EdgeInsets.all(2),
                child: Image.asset(
                  "assets/images/my_contestts.png",
                  height: 20,
                  width: 20,
                  color: _currentIndex == 1
                      ? AppColors.accentColors
                      : Colors.black,
                ),
              ),
            ),
            BottomNavigationBarItem(
              title: Text(""),
              icon: Container(),
            ),
            BottomNavigationBarItem(
                title: Text(
                  'PROFILE',
                  style: TextStyle(
                      fontSize: 9,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w700),
                ),
                icon: Padding(
                  padding: EdgeInsets.all(2),
                  child: Image.asset(
                    "assets/images/profile.png",
                    height: 20,
                    width: 20,
                    color: _currentIndex == 3
                        ? AppColors.accentColors
                        : Colors.black,
                  ),
                )),
            BottomNavigationBarItem(
                title: Text(
                  'MORE',
                  style: TextStyle(
                      fontSize: 9,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w700),
                ),
                icon: Padding(
                  padding: EdgeInsets.all(2),
                  child: Image.asset(
                    "assets/images/more.png",
                    height: 20,
                    width: 20,
                    color: _currentIndex == 4
                        ? AppColors.accentColors
                        : Colors.black,
                  ),
                )),
          ],
        ),
      ),
    );
  }





}
