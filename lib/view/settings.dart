// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100.h,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('asset/welcombg.png'), fit: BoxFit.cover)),
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset('asset/banner2.png'),
              ),
            ),
            SizedBox(height: 1.h),
            Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CustomTileWidget(
                  text: "Personal\nLoan",
                ),
                CustomTileWidget(
                  text: "Home\nLoan",
                ),
                CustomTileWidget(
                  text: "Car/Bike\nLoan",
                ),
              ],
            ),
            SizedBox(
              height: 1.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CustomTileWidget(
                  text: "Mortgage\nLoan",
                ),
                CustomTileWidget(
                  text: "Education\nLoan",
                ),
                CustomTileWidget(
                  text: "Business\nLoan",
                ),
              ],
            ),
            SizedBox(
              height: 1.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CustomTileWidget(
                  text: "Gold\nLoan",
                ),
                CustomTileWidget(
                  text: "Health\nLoan",
                ),
                CustomTileWidget(
                  text: "+\nLoan",
                ),
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Center(
              child: Image.asset(
                'asset/text.png',
                height: 8.h,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomTileWidget extends StatelessWidget {
  final String text;

  const CustomTileWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15.h,
      width: 30.w,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("asset/rectangle.png"), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(5.w)),
      child: Center(
        child: Text(
          text,textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20),
        ),
      ),
    );
  }
}
