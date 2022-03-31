import 'package:flutter/material.dart';
import 'package:fulltoz/res/app_colors.dart';
import 'package:fulltoz/res/strings.dart';
import 'package:fulltoz/utils/size_utils.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              height: SizeUtils.verticalSize * 8.4,
              color: AppColors.accentColors,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 18),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pop(context,true);
                      },
                      child: Image.asset(
                        "assets/images/back_icon.png",
                        height: 18,
                        width: 18,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    'edit_profile'.tr,
                    style: TextStyle(
                        color: AppColors.white,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  )
                ],
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: SizeUtils.verticalSize * 3,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 18, right: 18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: SizeUtils.horizontalSize * 3.4),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'username'.tr,
                                  style: TextStyle(color: Colors.black87)),
                              TextSpan(
                                  text: '*',
                                  style:
                                      TextStyle(color: AppColors.accentColors))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: SizeUtils.verticalSize * 0.8,
                        ),
                        Container(
                          height: 44,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 0.6,
                              ),
                            borderRadius: BorderRadius.circular(5),
                          ),

                          child: Padding(
                            padding: EdgeInsets.only(left: 15,right: 15),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: TextFormField(
                                keyboardType: TextInputType.text,
                                autofocus: false,
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: "Inter",
                                    fontWeight: FontWeight.w300,
                                    color: AppColors.black
                                ),

                                decoration: InputDecoration.collapsed(
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
                          height: SizeUtils.verticalSize * 2.9,
                        ),



                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: SizeUtils.horizontalSize * 3.4),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'mobile_number'.tr,
                                  style: TextStyle(color: Colors.black87)),
                              TextSpan(
                                  text: '*',
                                  style:
                                  TextStyle(color: AppColors.accentColors))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: SizeUtils.verticalSize * 0.8,
                        ),
                        Container(
                          height: 44,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 0.6,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),

                          child: Padding(
                            padding: EdgeInsets.only(left: 15,right: 15),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                autofocus: false,
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: "Inter",
                                    fontWeight: FontWeight.w300,
                                    color: AppColors.black
                                ),

                                decoration: InputDecoration.collapsed(
                                  hintText: 'enter_mobile_number'.tr,
                                  border: InputBorder.none,
                                ),
                                maxLines: 1,
                                // validator: FormValidator().validateEmail,
                              ),
                            ),
                          ),
                        ),





                        SizedBox(
                          height: SizeUtils.verticalSize * 2.9,
                        ),



                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: SizeUtils.horizontalSize * 3.4),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'email'.tr,
                                  style: TextStyle(color: Colors.black87)),
                              TextSpan(
                                  text: '*',
                                  style:
                                  TextStyle(color: AppColors.accentColors))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: SizeUtils.verticalSize * 0.8,
                        ),
                        Container(
                          height: 44,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 0.6,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),

                          child: Padding(
                            padding: EdgeInsets.only(left: 15,right: 15),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                autofocus: false,
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: "Inter",
                                    fontWeight: FontWeight.w300,
                                    color: AppColors.black
                                ),

                                decoration: InputDecoration.collapsed(
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
                          height: SizeUtils.verticalSize * 2.9,
                        ),



                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: SizeUtils.horizontalSize * 3.4),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'paytm_number'.tr,
                                  style: TextStyle(color: Colors.black87)),
                              TextSpan(
                                  text: '*',
                                  style:
                                  TextStyle(color: AppColors.accentColors))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: SizeUtils.verticalSize * 0.8,
                        ),
                        Container(
                          height: 44,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 0.6,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),

                          child: Padding(
                            padding: EdgeInsets.only(left: 15,right: 15),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                autofocus: false,
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: "Inter",
                                    fontWeight: FontWeight.w300,
                                    color: AppColors.black
                                ),

                                decoration: InputDecoration.collapsed(
                                  hintText: 'enter_paytm_number'.tr,
                                  border: InputBorder.none,
                                ),
                                maxLines: 1,
                                // validator: FormValidator().validateEmail,
                              ),
                            ),
                          ),
                        ),





                        SizedBox(
                          height: SizeUtils.verticalSize * 2.9,
                        ),



                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: SizeUtils.horizontalSize * 3.4),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'bank_name'.tr,
                                  style: TextStyle(color: Colors.black87)),
                              TextSpan(
                                  text: '*',
                                  style:
                                  TextStyle(color: AppColors.accentColors))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: SizeUtils.verticalSize * 0.8,
                        ),
                        Container(
                          height: 44,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 0.6,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),

                          child: Padding(
                            padding: EdgeInsets.only(left: 15,right: 15),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: TextFormField(
                                keyboardType: TextInputType.text,
                                autofocus: false,
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: "Inter",
                                    fontWeight: FontWeight.w300,
                                    color: AppColors.black
                                ),

                                decoration: InputDecoration.collapsed(
                                  hintText: 'enter_bank_name'.tr,
                                  border: InputBorder.none,
                                ),
                                maxLines: 1,
                                // validator: FormValidator().validateEmail,
                              ),
                            ),
                          ),
                        ),




                        SizedBox(
                          height: SizeUtils.verticalSize * 2.9,
                        ),



                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: SizeUtils.horizontalSize * 3.4),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'account_holder_name'.tr,
                                  style: TextStyle(color: Colors.black87)),
                              TextSpan(
                                  text: '*',
                                  style:
                                  TextStyle(color: AppColors.accentColors))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: SizeUtils.verticalSize * 0.8,
                        ),
                        Container(
                          height: 44,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 0.6,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),

                          child: Padding(
                            padding: EdgeInsets.only(left: 15,right: 15),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                autofocus: false,
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: "Inter",
                                    fontWeight: FontWeight.w300,
                                    color: AppColors.black
                                ),

                                decoration: InputDecoration.collapsed(
                                  hintText: 'enter_holder_name'.tr,
                                  border: InputBorder.none,
                                ),
                                maxLines: 1,
                                // validator: FormValidator().validateEmail,
                              ),
                            ),
                          ),
                        ),




                        SizedBox(
                          height: SizeUtils.verticalSize * 2.9,
                        ),



                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: SizeUtils.horizontalSize * 3.4),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'bank_account_number'.tr,
                                  style: TextStyle(color: Colors.black87)),
                              TextSpan(
                                  text: '*',
                                  style:
                                  TextStyle(color: AppColors.accentColors))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: SizeUtils.verticalSize * 0.8,
                        ),
                        Container(
                          height: 44,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 0.6,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),

                          child: Padding(
                            padding: EdgeInsets.only(left: 15,right: 15),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                autofocus: false,
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: "Inter",
                                    fontWeight: FontWeight.w300,
                                    color: AppColors.black
                                ),

                                decoration: InputDecoration.collapsed(
                                  hintText: 'enter_bank_account_no'.tr,
                                  border: InputBorder.none,
                                ),
                                maxLines: 1,
                                // validator: FormValidator().validateEmail,
                              ),
                            ),
                          ),
                        ),



                        SizedBox(
                          height: SizeUtils.verticalSize * 2.9,
                        ),



                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: SizeUtils.horizontalSize * 3.4),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'bank_ifsc'.tr,
                                  style: TextStyle(color: Colors.black87)),
                              TextSpan(
                                  text: '*',
                                  style:
                                  TextStyle(color: AppColors.accentColors))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: SizeUtils.verticalSize * 0.8,
                        ),
                        Container(
                          height: 44,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 0.6,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),

                          child: Padding(
                            padding: EdgeInsets.only(left: 15,right: 15),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                autofocus: false,
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: "Inter",
                                    fontWeight: FontWeight.w300,
                                    color: AppColors.black
                                ),

                                decoration: InputDecoration.collapsed(
                                  hintText: 'enter_bank_ifsc'.tr,
                                  border: InputBorder.none,
                                ),
                                maxLines: 1,
                                // validator: FormValidator().validateEmail,
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: SizeUtils.verticalSize*7,),



                        Row(
                          children: [

                            Expanded(
                                child: Container(
                                  height: SizeUtils.verticalSize *6.2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: AppColors.bgColor),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text('cancel'.tr,
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: "Inter",
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.black
                                    ),),
                                  ),
                                )
                            ),


                            SizedBox(width: SizeUtils.horizontalSize*4.5,),

                            Expanded(
                                child: Container(
                                  height: SizeUtils.verticalSize *6.2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: AppColors.accentColors),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text('submit'.tr,
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontFamily: "Inter",
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.white
                                      ),),
                                  ),
                                )
                            ),
                          ],
                        ),


                        SizedBox(height: SizeUtils.verticalSize*7,),

                      ],
                    ),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
