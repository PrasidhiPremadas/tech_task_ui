// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:technical_task_auth/view/profile.Screen.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController phoneController = TextEditingController();

  var code = '';

  var id;

  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 46,
      height: 56,
      textStyle: TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(10),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        elevation: 0,
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
            SizedBox(
              height: 50,
            ),
            Center(
                child: Image.asset(
              'asset/EnterDetails.png',
              height: 30,
            )),
            Center(
                child: Padding(
              padding: const EdgeInsets.only(left: 40, right: 40, top: 40),
              child: TextFormField(
                controller: phoneController,
                style:TextStyle(fontSize: 25,color: Colors.grey[700]) ,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    prefix: Text(
                      '+91',
                      style: TextStyle(fontSize: 25),
                    ),
                    prefixIcon: Align(
                        widthFactor: 1.0,
                        heightFactor: 1.0,
                        child: Image.asset(
                          'asset/phoneicon.png',
                          height: 30,
                        )),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    )),
              ),
            )),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Image.asset(
                'asset/Otp.png',
                height: 30,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Pinput(
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: focusedPinTheme,
                submittedPinTheme: submittedPinTheme,
                length: 6,
                pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                showCursor: true,
                onChanged: (value) {
                  code = value;
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () async {
                // id == null
                //     ? verifyPhone()
                //     :
                Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfileScreen(),
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
              height: 20,
            ),
            Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Did not receive OTP?',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[600]),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    ' Resend OTP',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  verifyPhone() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: '+91${phoneController.text.length>9}',
      verificationCompleted: (PhoneAuthCredential credential) async {
        print("verification completed");
      },
      verificationFailed: (FirebaseAuthException e) {
        print("verification failed");
      },
      codeSent: (String verificationId, int? resendToken) {
        id = verificationId;
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }
}
