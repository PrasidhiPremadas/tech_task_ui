// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:technical_task_auth/view/otp_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
        elevation: 0,
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('asset/welcombg.png'), 
                fit: BoxFit.cover)),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Center(
                child: Image.asset(
              'asset/logo.png',
              height: 100,
            )),
            SizedBox(
              height: 30,
            ),
            Center(
                child: Image.asset(
              'asset/Welcome.png',
              height: 35,
            )),
            SizedBox(
              height: 20,
            ),
            Center(
                child: Image.asset(
              'asset/text.png',
              height: 70,
            )),
            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OtpScreen(),
                    ));
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.indigo[900]),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 40, right: 40, top: 10, bottom: 10),
                  child: Image.asset(
                    'asset/Login.png',
                    height: 40,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.indigo[900]),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 25, right: 25, top: 10, bottom: 10),
                  child: Image.asset(
                    'asset/Register-1.png',
                    height: 40,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
