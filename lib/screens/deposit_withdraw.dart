
import 'package:flutter/material.dart';
import 'package:fulltoz/res/app_colors.dart';
import 'package:fulltoz/res/strings.dart';
import 'package:fulltoz/utils/CustomDropdownButton2.dart';
import 'package:fulltoz/utils/size_utils.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class DepositEithdraw extends StatefulWidget {
  const DepositEithdraw({Key? key}) : super(key: key);

  @override
  _DepositEithdrawState createState() => _DepositEithdrawState();
}

class _DepositEithdrawState extends State<DepositEithdraw> {
  String radioButtonItem = 'ONE';
  int id = 1;
  String? selectedValue="Bank";
  List<String> items = [
    'Bank',
    'Paytm',
  ];



  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Container(
          color: AppColors.white,
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
                      'deposit_withdraw'.tr,
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
                    child: Padding(
                      padding: EdgeInsets.only(left: 18,right: 18,top: 8),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Radio(
                                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      fillColor: MaterialStateColor.resolveWith((states) => AppColors.accentColors),
                                value: 1,
                                groupValue: id,
                                onChanged: (val) {
                                  setState(() {
                                    radioButtonItem = 'Deposit';
                                    id = 1;
                                  });
                                },
                              ),
                              Text(
                                'deposit'.tr,
                                style: new TextStyle(
                                    fontSize: 13,
                                    fontFamily: "Inter",
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black54
                                ),
                              ),

                              Radio(
                                fillColor: MaterialStateColor.resolveWith((states) => AppColors.accentColors),
                                value: 2,
                                groupValue: id,
                                onChanged: (val) {
                                  setState(() {
                                    radioButtonItem = 'Withdraw';
                                    id = 2;
                                  });
                                },
                              ),
                              Text(
                                'withdraw'.tr,
                                style: new TextStyle(
                                  fontSize: 13,
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black54
                                ),
                              ),
                            ],
                          ),





                          Visibility(
                            visible: id==1 ? true : false,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: SizeUtils.verticalSize*2,),

                                RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: SizeUtils.horizontalSize * 3.4),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'amount'.tr,
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
                                          hintText: 'enter_amount'.tr,
                                          border: InputBorder.none,
                                        ),
                                        maxLines: 1,
                                        // validator: FormValidator().validateEmail,
                                      ),
                                    ),
                                  ),
                                ),



                                SizedBox(height: SizeUtils.verticalSize*5,),

                                Container(
                                  height: SizeUtils.verticalSize*6.4,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: AppColors.accentColors),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text('deposit'.tr,
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: "Inter",
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.white
                                    ),),
                                  ),
                                  ),


                                SizedBox(height: SizeUtils.verticalSize*5,),


                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Column(
                                    children: [
                                      Text(Strings.accept_process,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: "Inter",
                                        fontWeight: FontWeight.w100,
                                        color: Colors.black87
                                      ),),


                                      Image.asset("assets/images/visa_paytm_paypal.png",
                                      height: 38,),
                                    ],
                                  ),
                                )

                              ],
                            ),
                          ),



                          Visibility(
                            visible: id==2 ? true : false,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
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
                                          text: "Withdraw into",
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
                            /*    GestureDetector(
                                  onTap: (){

                                  },
                                  child: Container(
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
                                            hintText: 'Enter Paytm Number',
                                            border: InputBorder.none,
                                          ),
                                          maxLines: 1,
                                          // validator: FormValidator().validateEmail,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),*/


                                CustomDropdownButton2(
                                  hint: 'Select Type',
                                  buttonWidth: MediaQuery.of(context).size.width,
                                  buttonHeight: 44,
                                  buttonDecoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 0.6,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),

                                 dropdownWidth: MediaQuery.of(context).size.width-18-18,
                                  dropdownDecoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 0.6,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  dropdownItems: items,
                                  value: selectedValue,
                                  dropdownElevation: 0,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedValue = value;
                                    });
                                  },
                                ),


                                SizedBox(
                                  height: SizeUtils.verticalSize * 2.9,
                                ),


                                Visibility(
                                  visible: selectedValue=="Bank" ? true :false,
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
                                                  text:'bank_name'.tr,
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
                                                keyboardType: TextInputType.text,
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




                                        SizedBox(
                                          height: SizeUtils.verticalSize * 2.9,
                                        ),
                                      ],
                                    )
                                ),



                                RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: SizeUtils.horizontalSize * 3.4),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text:'account_holder_name'.tr,
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
                                          text: 'withdrawal_amount'.tr,
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
                                          hintText: 'enter_withdrawal_amount'.tr,
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
                                          text: 'description'.tr,
                                          style: TextStyle(color: Colors.black87)),
                                      const TextSpan(
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
                                  height: 96,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 0.6,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),

                                  child: Padding(
                                    padding: EdgeInsets.only(left: 15,right: 15,top: 12,bottom: 12),
                                    child: Align(
                                      alignment: Alignment.topLeft,
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
                                          hintText: 'enter_description'.tr,
                                          border: InputBorder.none,
                                        ),
                                        maxLines: 1,
                                        // validator: FormValidator().validateEmail,
                                      ),
                                    ),
                                  ),
                                ),




                                SizedBox(
                                  height: SizeUtils.verticalSize * 4.5,
                                ),


                                Container(
                                  height: SizeUtils.verticalSize*6.4,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: AppColors.accentColors),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text('withdraw'.tr,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontFamily: "Inter",
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.white
                                      ),),
                                  ),
                                ),

                                SizedBox(
                                  height: SizeUtils.verticalSize * 2.5,
                                ),

                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }


}





