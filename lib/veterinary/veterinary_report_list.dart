import 'package:flutter/material.dart';

import '../constants/custom_float_button.dart';

class VeterinaryReportList extends StatelessWidget {
  const VeterinaryReportList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: ListView.builder(
              itemCount: 6,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Card(
                    child: SizedBox(
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(backgroundColor: Colors.grey,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Ajmal", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                              Text("Description of the problem")
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                );
              })),
      floatingActionButton: const CustomFloatButton(),
    );
  }
}
