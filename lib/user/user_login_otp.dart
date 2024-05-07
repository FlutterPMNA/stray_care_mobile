import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stray_care/user/user_home.dart';

import '../constants/custom_colors.dart';

class UserLoginOTP extends StatefulWidget {
  const UserLoginOTP({super.key});

  @override
  State<UserLoginOTP> createState() => _UserLoginOTPState();
}

class _UserLoginOTPState extends State<UserLoginOTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      labelText: "OTP",
                      labelStyle: TextStyle(color: CustomColors.buttonColor1)
                  ),
                ),
                const SizedBox(height: 30,),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: CustomColors.buttonColor1),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const UserHome()));
                        },
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30.0),
                          child: Text(
                            "Login",
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                    )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
