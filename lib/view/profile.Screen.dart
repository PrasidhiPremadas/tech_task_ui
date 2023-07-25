// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:technical_task_auth/view/lobby_screen.dart';
import 'package:technical_task_auth/view/CustomWidget/profiletile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Profile',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 25)),
        centerTitle: true,
        elevation: 0,
        leading: Icon(Icons.arrow_back),
      ),
      body: Container(
      
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('asset/welcombg.png'), fit: BoxFit.cover)),
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
            SizedBox(height: 40,),
           ProfileTile(details: 'Full Name'),
           ProfileTile(details: 'Date of Birth'),
           ProfileTile(details: 'Gender'),
           ProfileTile(details: 'Pancard'),
           ProfileTile(details: 'Address'),
           SizedBox(height: 40,),
           Center(
            child:  InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LobbyScreen(),
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
                    'asset/Submit.png',
                    height: 40,
                  ),
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
