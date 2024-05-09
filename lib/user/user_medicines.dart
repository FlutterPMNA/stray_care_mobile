import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stray_care/constants/custom_colors.dart';
import 'package:stray_care/constants/custom_float_button.dart';

import '../constants/custom_button.dart';

class UserMedicines extends StatelessWidget {
  const UserMedicines({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Medicines", style: TextStyle(fontSize: 30, color: CustomColors.buttonColor1),),
                Text("Doctor's Name", style: TextStyle(color: CustomColors.buttonColor1, fontWeight: FontWeight.bold, fontSize: 30),),
                SizedBox(height: 30,),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Medicine 1",
                      hintStyle: TextStyle(color: CustomColors.buttonColor1)
                  ),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Medicine 2",
                      hintStyle: TextStyle(color: CustomColors.buttonColor1)
                  ),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Medicine 3",
                      hintStyle: TextStyle(color: CustomColors.buttonColor1)
                  ),
                ),
                SizedBox(height: 50,),
                Row(
                  children: [
                    Expanded(child: CustomButton(buttonColor: CustomColors.buttonColor1, text: "Submit", onPress: (){})),
                  ],
                )
              ],
            ),
          ),
        ),
        floatingActionButton: const CustomFloatButton(),
    );
  }
}
