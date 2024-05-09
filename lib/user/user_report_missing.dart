import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stray_care/constants/custom_float_button.dart';

import '../constants/custom_colors.dart';

class UserReportMissing extends StatelessWidget {
  const UserReportMissing({super.key});

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
                                // Navigator.push(context, MaterialPageRoute(builder: (context)=> const UserMyReports()));
                              },
                              child: const Text(
                                "Upload image",
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
                                // Navigator.push(context, MaterialPageRoute(builder: (context)=> const UserReportMissing()));
                              },
                              child: const Text(
                                "Animal type",
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
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Features",
                      labelStyle: TextStyle(color: CustomColors.buttonColor1),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))
                  ),
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
                                "Location",
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                              ))),
                    ),
                  ],
                ),const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: CustomColors.buttonColor1),
                          child: TextButton(
                              onPressed: () {
                                // Navigator.push(context, MaterialPageRoute(builder: (context)=> const UserReportAddDetails()));
                              },
                              child: const Text(
                                "Submit",
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
      floatingActionButton: const CustomFloatButton(),
    );
  }
}
