
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fulltoz/res/app_colors.dart';
import 'package:fulltoz/res/locale_string.dart';
import 'package:fulltoz/screens/HomeActivity.dart';
import 'package:fulltoz/screens/login_screen.dart';
import 'package:fulltoz/utils/locale_constants.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   String? lang;
   bool done = false;


  @override
  void initState(){
    super.initState();
   // _show();
  }

 /* Future<String?> _show() async {
    SharedPreferences prefs = await  SharedPreferences.getInstance() ;
    lang = prefs.getString('LANGUAGE') ?? 'en_US';

    setState(() {
      Get.updateLocale(Locale('en','US'));
    });


    print('-------$lang');
  }*/

  @override
  void didChangeDependencies() {
    getLocale().then((locale) {
      setState(() {
        print("Preference Revoked ${locale.languageCode}");
        Get.updateLocale(locale);
        print("GET LOCALE Revoked ${Get.locale!.languageCode}");
      });
    });
    super.didChangeDependencies();
  }


  @override
  Widget build(BuildContext context) {
    print('===========$lang');
    return GetMaterialApp(
      title: "Fulltoz",
      debugShowCheckedModeBanner: false,

      translations: LocaleString(),
      locale: Get.deviceLocale,
      fallbackLocale: Locale('en','US'),
    //  locale: lang==null ? Locale("hi_IN") : Locale(lang!),
      theme: ThemeData(primaryColor: AppColors.accentColors),
      home: LoginScreen(),

    );
  }
}
