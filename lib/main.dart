//import 'package:dailylearn/widgets/button.dart';
//import 'package:dailylearn/widgets/container_sized.dart';
//import 'package:dailylearn/widgets/dismissible.dart';
//import 'package:dailylearn/widgets/listgrid.dart';
import 'package:dailylearn/widgets/snackbar.dart';
//import 'package:dailylearn/widgets/rows.dart';
//import 'package:dailylearn/widgets/alert.dart';
//import 'package:dailylearn/widgets/images.dart';
//import 'package:dailylearn/widgets/animated_text.dart';
//5 in 1
import 'package:dailylearn/widgets/bottomnav.dart';
import 'package:dailylearn/widgets/trial.dart';
//import 'package:dailylearn/widgets/drawer.dart';
//import 'package:dailylearn/widgets/dropdown.dart';
//import 'package:dailylearn/widgets/forms.dart';
//import 'package:dailylearn/widgets/stack.dart';
//import 'package:dailylearn/widgets/imagepicker.dart';
//import 'package:dailylearn/widgets/location.dart';
//import 'package:dailylearn/widgets/snackbar.dart';
//import 'package:dailylearn/widgets/tapbar.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark, primaryColor: Colors.deepPurple),
      home: BottomNav(),
    );
  }
}
