import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fulltoz/res/app_colors.dart';
import 'package:fulltoz/utils/size_utils.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _obscureText = true;
  bool _obscureConfirmText = true;
  bool _isNext = false;

  @override
  Widget build(BuildContext context) {
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
                              height: SizeUtils.verticalSize * 48,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: 20, right: 20, top: 32),
                                child: Stack(
                                  children: [
                                    Visibility(
                                      visible: !_isNext,
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
                                          Container(
                                            height: 45,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.black,
                                                width: 0.6,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 15, right: 15),
                                              child: Align(
                                                alignment: Alignment.centerLeft,
                                                child: TextFormField(
                                                  keyboardType:
                                                      TextInputType.text,
                                                  autofocus: false,
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontFamily: "Inter",
                                                      fontWeight: FontWeight.w300,
                                                      color: AppColors.black),

                                                  decoration:
                                                      InputDecoration.collapsed(
                                                    hintText: 'your_username'.tr,
                                                    border: InputBorder.none,
                                                  ),
                                                  maxLines: 1,
                                                  // validator: FormValidator().validateEmail,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: SizeUtils.verticalSize * 2.8,
                                          ),
                                          Text(
                                            'fullname'.tr,
                                            style: TextStyle(
                                                fontSize: 11,
                                                fontFamily: "Inter",
                                                fontWeight: FontWeight.w300,
                                                color: Colors.black),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Container(
                                            height: 45,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.black,
                                                width: 0.6,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 15, right: 15),
                                              child: Align(
                                                alignment: Alignment.centerLeft,
                                                child: TextFormField(
                                                  keyboardType:
                                                      TextInputType.text,
                                                  autofocus: false,
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontFamily: "Inter",
                                                      fontWeight: FontWeight.w300,
                                                      color: AppColors.black),

                                                  decoration:
                                                      InputDecoration.collapsed(
                                                    hintText: 'your_full_name'.tr,
                                                    border: InputBorder.none,
                                                  ),
                                                  maxLines: 1,
                                                  // validator: FormValidator().validateEmail,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: SizeUtils.verticalSize * 2.8,
                                          ),
                                          Text(
                                            'mobile_number'.tr,
                                            style: TextStyle(
                                                fontSize: 11,
                                                fontFamily: "Inter",
                                                fontWeight: FontWeight.w300,
                                                color: Colors.black),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Container(
                                            height: 45,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.black,
                                                width: 0.6,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                            ),
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 15, right: 15),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      "+91",
                                                      style: TextStyle(
                                                          fontSize: 13,
                                                          fontFamily: "Inter",
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Colors.black),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Flexible(
                                                      child: TextFormField(
                                                        keyboardType:
                                                            TextInputType.number,
                                                        autofocus: false,
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            fontFamily: "Inter",
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            color:
                                                                AppColors.black),

                                                        decoration:
                                                            InputDecoration
                                                                .collapsed(
                                                          hintText: '00000 00000',
                                                          border:
                                                              InputBorder.none,
                                                        ),
                                                        maxLines: 1,
                                                        // validator: FormValidator().validateEmail,
                                                      ),
                                                    ),
                                                  ],
                                                )),
                                          ),
                                          SizedBox(
                                            height: SizeUtils.verticalSize * 2.8,
                                          ),
                                        ],
                                      ),
                                    ),


                                    Visibility(
                                      visible: _isNext,
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'email'.tr,
                                            style: TextStyle(
                                                fontSize: 11,
                                                fontFamily: "Inter",
                                                fontWeight: FontWeight.w300,
                                                color: Colors.black),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Container(
                                            height: 45,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.black,
                                                width: 0.6,
                                              ),
                                              borderRadius:
                                              BorderRadius.circular(6),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 15, right: 15),
                                              child: Align(
                                                alignment: Alignment.centerLeft,
                                                child: TextFormField(
                                                  keyboardType:
                                                  TextInputType.text,
                                                  autofocus: false,
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontFamily: "Inter",
                                                      fontWeight: FontWeight.w300,
                                                      color: AppColors.black),

                                                  decoration:
                                                  InputDecoration.collapsed(
                                                    hintText: 'enter_email'.tr,
                                                    border: InputBorder.none,
                                                  ),
                                                  maxLines: 1,
                                                  // validator: FormValidator().validateEmail,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: SizeUtils.verticalSize * 2.8,
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
                                          Container(
                                            height: 45,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.black,
                                                width: 0.6,
                                              ),
                                              borderRadius: BorderRadius.circular(6),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 15  ),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    child: TextFormField(
                                                      keyboardType:
                                                      TextInputType.text,
                                                      obscureText: _obscureText,
                                                      autofocus: false,
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontFamily: "Inter",
                                                          fontWeight: FontWeight.w300,
                                                          color: AppColors.black),

                                                      decoration:
                                                      InputDecoration.collapsed(
                                                        hintText: 'your_password'.tr,
                                                        border: InputBorder.none,
                                                      ),
                                                      maxLines: 1,
                                                      // validator: FormValidator().validateEmail,
                                                    ),
                                                  ),


                                                  SizedBox(
                                                    child: IconButton(
                                                      icon: Icon(
                                                        _obscureText
                                                            ? Icons.visibility
                                                            : Icons.visibility_off,
                                                      ),
                                                      iconSize: 18,
                                                      color: Colors.black,
                                                      splashColor: Colors.black,
                                                      onPressed: () {
                                                        setState(() {
                                                          _obscureText = !_obscureText;
                                                        });
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: SizeUtils.verticalSize * 2.8,
                                          ),
                                          Text(
                                            'confirm_password'.tr,
                                            style: TextStyle(
                                                fontSize: 11,
                                                fontFamily: "Inter",
                                                fontWeight: FontWeight.w300,
                                                color: Colors.black),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Container(
                                            height: 45,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.black,
                                                width: 0.6,
                                              ),
                                              borderRadius: BorderRadius.circular(6),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 15  ),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    child: TextFormField(
                                                      keyboardType:
                                                      TextInputType.text,
                                                      obscureText: _obscureConfirmText,
                                                      autofocus: false,
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontFamily: "Inter",
                                                          fontWeight: FontWeight.w300,
                                                          color: AppColors.black),

                                                      decoration:
                                                      InputDecoration.collapsed(
                                                        hintText: 'enter_confirm_password'.tr,
                                                        border: InputBorder.none,
                                                      ),
                                                      maxLines: 1,
                                                      // validator: FormValidator().validateEmail,
                                                    ),
                                                  ),


                                                  SizedBox(
                                                    child: IconButton(
                                                      icon: Icon(
                                                        _obscureConfirmText
                                                            ? Icons.visibility
                                                            : Icons.visibility_off,
                                                      ),
                                                      iconSize: 18,
                                                      color: Colors.black,
                                                      splashColor: Colors.black,
                                                      onPressed: () {
                                                        setState(() {
                                                          _obscureConfirmText = !_obscureConfirmText;
                                                        });
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: SizeUtils.verticalSize * 2.8,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: SizeUtils.verticalSize * 44,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          _isNext=false;
                                        });
                                      },
                                      child: Container(
                                        height: 60,
                                        width: 62,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                            color: AppColors.accentColors),
                                        child: Icon(
                                          Icons.arrow_back,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),


                                    SizedBox(width: 18,),

                                    GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          _isNext=true;
                                        });
                                      },
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
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                       Spacer(),
                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context,true);
                        },
                        child: SizedBox(
                          height: 60,
                          child:  Align(
                            alignment: Alignment.center,
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: SizeUtils.horizontalSize * 3.5),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'have_account'.tr,
                                      style: TextStyle(
                                          color: Colors.white70,
                                          fontFamily: "Inter",
                                          fontWeight: FontWeight.w200)),
                                  TextSpan(
                                      text: 'sign_in'.tr,
                                      style: TextStyle(
                                          color: AppColors.white,
                                          fontFamily: "Inter",
                                          fontWeight: FontWeight.w400))
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),


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
