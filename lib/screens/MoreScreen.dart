import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 30, left: 18, bottom: 14),
          child: Row(
            children: [
              Image.asset(
                "assets/images/info.png",
                height: 22,
                width: 22,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'about_us'.tr,
                style: TextStyle(
                    fontSize: 13,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w200,
                    color: Colors.black),
              )
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 0.2,
          color: Colors.black26,
        ),
        Padding(
          padding: EdgeInsets.only(top: 14, left: 18, bottom: 14),
          child: Row(
            children: [
              Image.asset(
                "assets/images/question.png",
                height: 22,
                width: 22,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'faqs'.tr,
                style: TextStyle(
                    fontSize: 13,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w200,
                    color: Colors.black),
              )
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 0.2,
          color: Colors.black26,
        ),
        Padding(
          padding: EdgeInsets.only(top: 14, left: 18, bottom: 14),
          child: Row(
            children: [
              Image.asset(
                "assets/images/question.png",
                height: 22,
                width: 22,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'rules_scoring'.tr,
                style: TextStyle(
                    fontSize: 13,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w200,
                    color: Colors.black),
              )
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 0.2,
          color: Colors.black26,
        ),
        Padding(
          padding: EdgeInsets.only(top: 14, left: 18, bottom: 14),
          child: Row(
            children: [
              Image.asset(
                "assets/images/question.png",
                height: 22,
                width: 22,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'how_it_works'.tr,
                style: TextStyle(
                    fontSize: 13,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w200,
                    color: Colors.black),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
