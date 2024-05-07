import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stray_care/user/user_report_details.dart';

import '../constants/custom_colors.dart';

class UserReportAddDetails extends StatefulWidget {
  const UserReportAddDetails({super.key});

  @override
  State<UserReportAddDetails> createState() => _UserReportAddDetailsState();
}

class _UserReportAddDetailsState extends State<UserReportAddDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: SizedBox(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.camera, color: Colors.blueAccent,),),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.photo, color: Colors.blueAccent,))
                  ],
                ),
                const SizedBox(height: 30,),
                TextFormField(
                  decoration: const InputDecoration(labelText: "Add description", border: OutlineInputBorder()),
                ),
                SizedBox(height: 40,),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: CustomColors.buttonColor1),
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> const UserReportDetails()));
                              },
                              child: const Text(
                                "Submit",
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                              )
                          )
                      ),
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
