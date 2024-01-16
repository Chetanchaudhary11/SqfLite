import 'package:flutter/material.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      // appBar: AppBar(
      //   title: Text("Blood Dashbord"),
      // ),
      body: content(),
    );
  }
  Widget content(){
    return Column(
      children: [
        Center(
          child: Container(
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.transparent,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),)),
            child: Image.asset("assets/blood2.png"),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text("        Blood Hub\n Location Near you",
        style: TextStyle(
          fontSize: 25
        ),),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.redAccent,borderRadius: BorderRadius.circular(20)),
              height: 90,
              width: 120,
              child: Icon(Icons.gps_fixed,
              size: 40,
              color: Colors.white,),
            ),
            SizedBox(
              width: 50
            ),
          Container(
          decoration: BoxDecoration(color: Colors.redAccent,borderRadius: BorderRadius.circular(20)),
          height: 90,
          width: 120,
          child: Icon(Icons.map,
          size: 40,
          color: Colors.white,),
        ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          decoration: BoxDecoration(color: Colors.redAccent,borderRadius: BorderRadius.circular(20)),
          height: 90,
          width: 120,
          child: Icon(Icons.phone,
          size: 40,
          color: Colors.white,),
        ),
        SizedBox(
          height: 50,
        ),
        Text("Can I give Blood",style: TextStyle(color:Colors.redAccent,fontSize: 20),),
        SizedBox(
          height: 10,
        ),
        Text("Share On social media",style: TextStyle(color:Colors.redAccent,fontSize: 20),)
      ],
    );
  }
}