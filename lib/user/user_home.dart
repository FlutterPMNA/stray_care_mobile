import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stray_care/about_us.dart';
import 'package:stray_care/constants/custom_button.dart';
import 'package:stray_care/user/user_adopt.dart';
import 'package:stray_care/user/user_booking.dart';
import 'package:stray_care/user/user_donate.dart';
import 'package:stray_care/user/user_find_pet.dart';
import 'package:stray_care/user/user_medicines.dart';
import 'package:stray_care/user/user_report_incident.dart';

import '../constants/custom_colors.dart';

class UserHome extends StatefulWidget {
  const UserHome({super.key});

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  @override
  Widget build(BuildContext context) {
    List<String> buttonName = [
      "Report Incident",
      "Find your pet",
      "Adopt",
      "Donate",
      "Booking",
      "Medicines",
      "About Us"
    ];

    List<Widget> routes = [
      const UserReportIncident(),
      const UserFindPet(),
      const UserAdopt(),
      const UserDonate(),
      const UserBooking(),
      const UserMedicines(),
      const AboutUs(),
    ];

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 20),
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 20,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              SizedBox(
                width: 250,
                height: 500,
                child: ListView.builder(
                    itemCount: buttonName.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: CustomButton(
                                    buttonColor: CustomColors.buttonColor1,
                                    text: buttonName[index],
                                    onPress: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                routes[index]))),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
