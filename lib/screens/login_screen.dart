import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fulltoz/models/LoginRequestData.dart';
import 'package:fulltoz/res/app_colors.dart';
import 'package:fulltoz/screens/HomeActivity.dart';
import 'package:fulltoz/screens/register_screen.dart';
import 'package:fulltoz/utils/size_utils.dart';
import 'package:get/get.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;
  final _formKey = GlobalKey<FormState>();

  late String _username;
  late String _password;

  @override
  Widget build(BuildContext context) {
    SizeUtils().sizeUnit(context);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.black, //i like transaparent :-)
        systemNavigationBarColor: Colors.black, // navigation bar color
        statusBarIconBrightness: Brightness.dark, // status bar icons' color
        systemNavigationBarIconBrightness:
            Brightness.dark, //navigation bar icons' color
      ),
      child: Material(
        child: SafeArea(
          child: LayoutBuilder(builder: (context, constraint) {
            return SingleChildScrollView(
                child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraint.maxHeight),
              child: IntrinsicHeight(
                child: Container(
                  color: AppColors.black,
                  child: Column(
                    children: [
                      SizedBox(
                        height: SizeUtils.verticalSize * 2,
                      ),
                      Image.asset(
                        "assets/images/logo_red.png",
                        height: SizeUtils.verticalSize * 9,
                      ),
                      SizedBox(
                        height: SizeUtils.verticalSize * 2.8,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 14, right: 14),
                        child:
                            Image.asset("assets/images/login_bg_image_red.png"),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 24, right: 24),
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white),
                              height: SizeUtils.verticalSize * 38,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: 20, right: 20, top: 32),
                                child: Form(
                                  key: _formKey,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'username'.tr,
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontFamily: "Inter",
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      TextFormField(
                                        cursorColor: Colors.black,
                                        keyboardType: TextInputType.text,
                                        autofocus: false,
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: "Inter",
                                            fontWeight: FontWeight.w300,
                                            color: AppColors.black),

                                        decoration: InputDecoration(
                                            contentPadding: EdgeInsets.fromLTRB(
                                                20.0, 15.0, 20.0, 15.0),
                                            hintText: 'your_username'.tr,
                                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(6.0)),

                                          focusedBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(6.0)),
                                        ),


                                        /*  decoration: InputDecoration.collapsed(
                                          hintText: 'Your Username',
                                          border: InputBorder.none,
                                        ),*/
                                        maxLines: 1,
                                        validator: (val) {
                                          if (val!.length == 0)
                                            return "Please enter Username";
                                          else
                                            return null;
                                        },
                                        onSaved: (val) => _username = val!,
                                        // validator: FormValidator().validateEmail,
                                      ),
                                      SizedBox(
                                        height: SizeUtils.verticalSize * 3,
                                      ),
                                      Text(
                                        'password'.tr,
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontFamily: "Inter",
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      TextFormField(
                                        cursorColor: Colors.black,
                                        keyboardType: TextInputType.text,
                                        obscureText: _obscureText,
                                        autofocus: false,
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: "Inter",
                                            fontWeight: FontWeight.w300,
                                            color: AppColors.black),
                                        decoration: InputDecoration(
                                            contentPadding: EdgeInsets.fromLTRB(
                                                20.0, 15.0, 20.0, 15.0),
                                            hintText: 'your_password'.tr,
                                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(6.0),),
                                            focusedBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(6.0)),

                                            suffixIcon: IconButton(
                                                icon: Icon(
                                                  _obscureText
                                                      ? Icons.visibility
                                                      : Icons.visibility_off,
                                                  color: Colors.black,
                                                ),
                                                onPressed: () {
                                                  setState(() {
                                                    _obscureText =
                                                        !_obscureText;
                                                  });
                                                })),
                                        maxLines: 1,
                                        validator: (val) {
                                          if (val?.length == 0)
                                            return "Please enter password";
                                          else if (val!.length <= 5)
                                            return "Your password should be more then 6 char long";
                                          else
                                            return null;
                                        },
                                        onSaved: (val) => _password = val!,
                                      ),
                                      SizedBox(
                                        height: 7,
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                          'forgot_password'.tr,
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: SizeUtils.verticalSize * 34,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    print("===");
                                    if (_formKey.currentState!.validate()) {
                                      _formKey.currentState!.save();

                                      Navigator.pushAndRemoveUntil<dynamic>(
                                        context,
                                        MaterialPageRoute<dynamic>(
                                          builder: (BuildContext context) =>
                                              HomeActivity(),
                                        ),
                                        (route) =>
                                            false, //if you want to disable back feature set to false
                                      );
                                    }
                                  },
                                  child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        height: 60,
                                        width: 62,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                            color: AppColors.accentColors),
                                        child: Icon(
                                          Icons.arrow_forward,
                                          color: Colors.white,
                                        ),
                                      )),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => RegisterScreen()));
                        },
                        child: SizedBox(
                          height: 30,
                          child: RichText(
                            text: TextSpan(
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: SizeUtils.horizontalSize * 3.5),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'dont_account'.tr,
                                    style: TextStyle(
                                        color: Colors.white70,
                                        fontFamily: "Inter",
                                        fontWeight: FontWeight.w200)),
                                TextSpan(
                                    text: 'sign_up'.tr,
                                    style: TextStyle(
                                        color: AppColors.white,
                                        fontFamily: "Inter",
                                        fontWeight: FontWeight.w400))
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ));
          }),
        ),
      ),
    );
  }
}
