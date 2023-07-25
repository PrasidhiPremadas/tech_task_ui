import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:technical_task_auth/view/lobby_screen.dart';
import 'package:technical_task_auth/view/otp_screen.dart';

class AuthService{

  handleAuthState(){
   return StreamBuilder(
    stream: FirebaseAuth.instance.authStateChanges(),
    builder: (context, snapshot) {
     if(snapshot.hasData){
      print("data is there");
       return const LobbyScreen();
     }
     else{
      print("data is not there");
      return const OtpScreen();
     }
   },);
  }
  signOut(){
  FirebaseAuth.instance.signOut();
}
}