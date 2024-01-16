import 'package:blood_hub/booking.dart';
import 'package:blood_hub/login.dart';
import 'package:blood_hub/splash.dart';
import 'package:blood_hub/survey.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/':(context) => Splash(),
      '/login':(context) => Login(),
      '/booking':(context) => Booking(),
      '/survey':(context) => Survey(),
    },
  );
  }
}


