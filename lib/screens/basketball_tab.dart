import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class BasketballTab extends StatefulWidget {
  const BasketballTab({Key? key}) : super(key: key);

  @override
  _BasketballTabState createState() => _BasketballTabState();
}

class _BasketballTabState extends State<BasketballTab> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/logo_red.png",
            width: 116,
            height: 60,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'stay_tuned'.tr,
            style: TextStyle(
              fontSize: 16,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),


          SizedBox(
            height: 6,
          ),
          Text(
            'matches_shortly'.tr,
            style: TextStyle(
              fontSize: 12,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w200,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
