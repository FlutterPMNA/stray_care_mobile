import 'package:flutter/material.dart';
import 'package:stray_care/login_selection.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stray Care',
      home: LoginSelection(),
    );
  }
}
