import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stray_care/constants/custom_colors.dart';
import 'package:stray_care/user/user_login_otp.dart';

class UserLoginScreen extends StatefulWidget {
  const UserLoginScreen({super.key});

  @override
  State<UserLoginScreen> createState() => _UserLoginScreenState();
}

class _UserLoginScreenState extends State<UserLoginScreen> {
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
                    labelText: "Name",
                    labelStyle: TextStyle(color: CustomColors.buttonColor1)
                  ),
                ),
                const SizedBox(height: 30,),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Mobile No.",
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const UserLoginOTP()));
                        },
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30.0),
                          child: Text(
                            "Send OTP",
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
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
