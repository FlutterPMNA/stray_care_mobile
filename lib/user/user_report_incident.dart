import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stray_care/user/user_report_add_details.dart';

import '../constants/custom_colors.dart';

class UserReportIncident extends StatefulWidget {
  const UserReportIncident({super.key});

  @override
  State<UserReportIncident> createState() => _UserReportIncidentState();
}

class _UserReportIncidentState extends State<UserReportIncident> {
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
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> const UserReportAddDetails()));
                              },
                              child: const Text(
                                "Found a wounded animal!",
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
                              color: CustomColors.buttonColor1),
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> const UserReportAddDetails()));
                              },
                              child: const Text(
                                "Found a aggressive animal!",
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
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> const UserReportAddDetails()));
                              },
                              child: const Text(
                                "Wild animal on sight!",
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
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> const UserReportAddDetails()));
                              },
                              child: const Text(
                                "Abuse towards Animals!",
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
