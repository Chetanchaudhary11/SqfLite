import 'dart:async';

import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    // TODO: implement initState
    startTimer();
    super.initState();
  }

  startTimer(){
    // ignore: unused_local_variable
    var duration = Duration(seconds: 2);
    return Timer(duration, route);
  }
  route(){
    Navigator.of(context).pushReplacementNamed('/login');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/bloodlogo.jpg"),
              SizedBox(height: 10,),
              Text("Blood Hub App",style: TextStyle(fontSize: 50),)
            ],
          ),
        ),
      ),
    );
  }
}