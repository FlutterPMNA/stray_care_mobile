import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stray_care/user/user_my_reports.dart';
import 'package:stray_care/user/user_report_missing.dart';

import '../constants/custom_colors.dart';

class UserFindPet extends StatefulWidget {
  const UserFindPet({super.key});

  @override
  State<UserFindPet> createState() => _UserFindPetState();
}

class _UserFindPetState extends State<UserFindPet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: SizedBox(
            width: 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: CustomColors.buttonColor1),
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> const UserMyReports()));
                              },
                              child: const Text(
                                "My reports",
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                              )
                          )
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: CustomColors.buttonColor2),
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> const UserReportMissing()));
                              },
                              child: const Text(
                                "Report missing",
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                              ))),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: CustomColors.buttonColor1),
                          child: TextButton(
                              onPressed: () {
                                // Navigator.push(context, MaterialPageRoute(builder: (context)=> const UserReportAddDetails()));
                              },
                              child: const Text(
                                "Found a pet ?",
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                              ))),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {Navigator.pop(context);},
        child: Icon(
          CupertinoIcons.back,
          color: Colors.white,
          size: 60,
        ),
        backgroundColor: CustomColors.buttonColor1,
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      ),
    );
  }
}
