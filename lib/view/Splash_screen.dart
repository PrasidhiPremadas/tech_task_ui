// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:technical_task_auth/view/welcomeScreen.dart';

class SplashScreen extends StatefulWidget {
  const  SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 6),
        () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WelcomeScreen(),
            )));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('asset/splash.png'), fit: BoxFit.cover)),
        child: Center(
            child: Stack(
          children: [
            Center(
              child: Image.asset(
                'asset/Ellipse 1.png',
                height: 350,
              ),
            ),
            Positioned(
                child: Center(
              child: Image.asset(
                'asset/Ellipse 2.png',
                height: 300,
              ),
            )),
            Positioned(
                child: Center(
              child: Image.asset(
                'asset/logo.png',
                height: 90,
              ),
            ))
          ],
        )),
      ),
    );
  }
}
