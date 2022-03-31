import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fulltoz/models/history_model.dart';
import 'package:fulltoz/res/app_colors.dart';
import 'package:fulltoz/res/strings.dart';
import 'package:fulltoz/utils/size_utils.dart';
import 'package:fulltoz/widgets/MyBehavior.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:intl/intl.dart';


class AccountStatement extends StatefulWidget {
  const AccountStatement({Key? key}) : super(key: key);

  @override
  _AccountStatementState createState() => _AccountStatementState();
}

class _AccountStatementState extends State<AccountStatement> {
  String date = Strings.dd_mm_yyyy;
  String enddate = Strings.dd_mm_yyyy;
  DateTime selectedDate = DateTime.now();
  DateTime endselectedDate = DateTime.now();

  List<HistoryModel> mainDataList = [
    HistoryModel("User Deposit", "28-03-2022 08:32", "500"),
    HistoryModel("User Deposit", "25-03-2022 09:32", "600"),
    HistoryModel("User Deposit", "24-03-2022 10:32", "700"),
    HistoryModel("User Deposit", "24-03-2022 10:32", "750"),
    HistoryModel("User Deposit", "23-03-2022 11:32", "800"),
    HistoryModel("User Deposit", "10-03-2022 02:32", "200"),
    HistoryModel("User Deposit", "24-02-2022 08:32", "300"),
    HistoryModel("User Deposit", "15-02-2022 11:32", "400"),
    HistoryModel("User Deposit", "07-01-2022 05:32", "505"),
    HistoryModel("User Deposit", "05-01-2022 11:32", "824"),
    HistoryModel("User Deposit", "01-01-2022 01:32", "412"),
  ];

  List<HistoryModel> historyModel =[];


  @override
  initState() {
    historyModel = mainDataList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          body: Container(
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
                        'history'.tr,
                        style: TextStyle(
                            color: AppColors.white,
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: SizeUtils.verticalSize * 3,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 18, right: 18),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize:
                                            SizeUtils.horizontalSize * 3.4),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'start_date'.tr,
                                          style:
                                              TextStyle(color: Colors.black87)),
                                      TextSpan(
                                          text: '*',
                                          style: TextStyle(
                                              color: AppColors.accentColors))
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: SizeUtils.verticalSize * 0.8,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    _selectDate(context);
                                  },
                                  child: Container(
                                    height: SizeUtils.verticalSize * 5.5,
                                    padding:
                                        EdgeInsets.only(left: 12, right: 12),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 0.6,
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        date,
                                        style: TextStyle(
                                            color: Colors.black26,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w300,
                                            fontSize: 13),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: SizeUtils.horizontalSize * 4.8,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize:
                                            SizeUtils.horizontalSize * 3.4),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'end_date'.tr,
                                          style:
                                              TextStyle(color: Colors.black87)),
                                      TextSpan(
                                          text: '*',
                                          style: TextStyle(
                                              color: AppColors.accentColors))
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: SizeUtils.verticalSize * 0.8,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    showPicker(context);
                                  },
                                  child: Container(
                                    height: SizeUtils.verticalSize * 5.5,
                                    padding:
                                        EdgeInsets.only(left: 12, right: 12),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 0.6,
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        enddate,
                                        style: TextStyle(
                                            color: Colors.black26,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w300,
                                            fontSize: 13),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: SizeUtils.verticalSize * 4,
                      ),
                      GestureDetector(
                        onTap: (){
                          _runFilter(date, enddate);
                        },
                        child: Container(
                          height: SizeUtils.verticalSize * 5.9,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: AppColors.accentColors),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'submit'.tr,
                              style: TextStyle(
                                  color: AppColors.white,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: SizeUtils.verticalSize * 3.3,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'history'.tr,
                          style: TextStyle(
                              color: AppColors.black,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                              fontSize: 13),
                        ),
                      ),

                    ],
                  ),
                ),

                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 18,right: 18),
                    child: ScrollConfiguration(
                      behavior: MyBehavior(),
                      child: ListView.builder(
                        itemCount: historyModel.length,
                        shrinkWrap: true,
                        padding: const EdgeInsets.only(bottom: 12),

                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                            margin: EdgeInsets.only(top: 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: AppColors.bgColor,
                            elevation: 0,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: 17, bottom: 17, left: 16, right: 16),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          historyModel[index].title,
                                          style: TextStyle(
                                              color: AppColors.black,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13.5),
                                        ),


                                        SizedBox(height: 4,),
                                        Text(
                                          dateConverter(historyModel[index].date),
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w200,
                                              fontSize: 11),
                                        ),
                                      ],
                                    ),
                                  ),




                                  Column(
                                    children: [
                                      Text(
                                        historyModel[index].amount,
                                        style: TextStyle(
                                            color: AppColors.black,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14),
                                      ),


                                      Text(
                                        "Pending",
                                        style: TextStyle(
                                            color: AppColors.accentColors,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w300,
                                            fontSize: 10),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }




  void _runFilter(String startDate,String endDate) {
    final format = DateFormat("dd-MM-yyyy");
    DateTime statrtD_Milisecond = format.parse(startDate);


    final format1= DateFormat("dd-MM-yyyy");
    DateTime endD_Milisecond = format1.parse(endDate);


    List<HistoryModel> results = [];
    if (startDate.isEmpty) {
      results = mainDataList;
    } else {
      for (var i = 0; i < mainDataList.length; i++) {
        final format1= DateFormat("dd-MM-yyyy hh:mm");
        DateTime current_Milisecond = format1.parse(mainDataList[i].date);


        print("------start date----->${statrtD_Milisecond.millisecondsSinceEpoch}");
        print("------end date----->${endD_Milisecond.millisecondsSinceEpoch}");
        print("------current date----->${current_Milisecond.millisecondsSinceEpoch}");

        if(statrtD_Milisecond.millisecondsSinceEpoch<=current_Milisecond.millisecondsSinceEpoch && endD_Milisecond.millisecondsSinceEpoch>=current_Milisecond.millisecondsSinceEpoch){
          results.add(mainDataList[i]);
        }

      }
     /* results = mainDataList
          .where((user) =>
          user.date.toLowerCase().contains(enteredKeyword.toLowerCase()) && user.date.toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();*/

      print("----------->${results.length}");
    }

    setState(() {
      historyModel = results;
    });
  }



  String dateConverter(String date) {
    // Input date Format
    final format = DateFormat("dd-MM-yyyy HH:mm");
    DateTime gettingDate = format.parse(date);

    final DateFormat formatter = DateFormat('dd MMM yyyy HH:mm');
    // Output Date Format
    final String formatted = formatter.format(gettingDate);
    return formatted;
  }



  _selectDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2010),
      lastDate: DateTime(2101),
    );
    if (selected != null && selected != selectedDate)
      setState(() {
        selectedDate = selected;
        date = "${selectedDate.day}-${selectedDate.month}-${selectedDate.year}";
      });
  }

  Future<Null> showPicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: endselectedDate,
        firstDate: DateTime(2018),
        lastDate: DateTime(2101));

    if (picked != null && picked != endselectedDate)
      setState(() {
        endselectedDate = picked;
        enddate =
            "${endselectedDate.day}-${endselectedDate.month}-${endselectedDate.year}";
      });
  }
}
