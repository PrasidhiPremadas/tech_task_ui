// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:technical_task_auth/view/Splash_screen.dart';
import 'package:technical_task_auth/view/settings.dart';
import 'package:technical_task_auth/controller/authentication.dart';

class LobbyScreen extends StatefulWidget {
  const LobbyScreen({super.key});

  @override
  State<LobbyScreen> createState() => _LobbyScreenState();
}

class _LobbyScreenState extends State<LobbyScreen> {

  int selectedIndex = 0;

  List <Widget> screen =[
   SettingScreen(),
   SettingScreen(),
   SettingScreen(),
   SettingScreen(),
   SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: (){
           AuthService().signOut();
           Navigator.push(context, MaterialPageRoute(builder: (context) => SplashScreen(),));
          }, icon:Icon(Icons.logout))
        ],
        title: Text('Lobby',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 25),),
        centerTitle: true,
        elevation: 0,
        leading: Icon(Icons.arrow_back),
        
      ),
      bottomNavigationBar:
           BottomAppBar(
            height: 60,
            color: Colors.blue[300],
            shape: CircularNotchedRectangle(),
            notchMargin: 7,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedIndex=0;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('asset/settings.png',height: 20,color:selectedIndex == 0 ? Colors.indigo[700] : Colors.white,),
                      )),
                    Text('Settings',style: TextStyle(color:selectedIndex==0 ?Colors.indigo[700]: Colors.white),)
                    
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedIndex=1;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('asset/offers.png',height: 20,color:selectedIndex == 1 ? Colors.indigo[700] : Colors.white,),
                      )),
                    Text('Offers',style: TextStyle(color:selectedIndex==1 ?Colors.indigo[700]: Colors.white),)
                    
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedIndex=2;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('asset/Home.png',height: 20,color:selectedIndex == 2 ? Colors.indigo[700] : Colors.white,),
                      )),
                    Text('Home',style: TextStyle(color:selectedIndex==2 ?Colors.indigo[700]: Colors.white),)
                    
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedIndex=3;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('asset/Account.png',height: 20,color:selectedIndex == 3 ? Colors.indigo[700] : Colors.white,),
                      )),
                    Text('Account',style: TextStyle(color:selectedIndex==3 ?Colors.indigo[700]: Colors.white),)
                    
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedIndex=4;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('asset/menu.png',height: 20,color:selectedIndex == 4 ? Colors.indigo[700] : Colors.white,),
                      )),
                    Text('Menu',style: TextStyle(color:selectedIndex==4 ?Colors.indigo[700]: Colors.white),)
                    
                  ],
                ),
                
                   
                
              ],
            ),
          ),
          body: screen[selectedIndex],
        );
   }
}
