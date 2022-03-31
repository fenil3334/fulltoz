import 'package:flutter/material.dart';
import 'package:fulltoz/res/app_colors.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: Container(
          color: AppColors.accentColors,
          child: Stack(
            children: [
              Image.asset(
                "assets/images/back.png",
                height: 24,
                width: 24,
              )
            ],
          ),
        ),
      ),
      body: Container(
        child: Center(
          child: Text("Notification"),
        ),
      ),
    );
  }
}
