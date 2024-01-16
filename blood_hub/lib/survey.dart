import 'package:flutter/material.dart';

class Survey extends StatefulWidget {
  const Survey({super.key});

  @override
  State<Survey> createState() => _ServeyState();
}

class _ServeyState extends State<Survey> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(),
    );
  }

  Widget content(){
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top:110.0),
          child: Center(
            child: Container(
              child: Icon(Icons.bloodtype,
              size: 150,
              color: Colors.redAccent,),
            ),
          ),
        ),
        SizedBox(
          height: 30,),
          Text("Plese Choose Your\n      Blood Group",
          style: TextStyle(fontSize: 30),),
          SizedBox(
            height: 30,
          ),
          bloodTypeRow("A", "B"),
          SizedBox(
            height: 10,
          ),
          SizedBox(height: 20),
          bloodTypeRow("O", "AB"),
          SizedBox(height: 10,),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 40,
                width: 50,
                decoration: BoxDecoration(color: Colors.grey[350],
                borderRadius: BorderRadius.circular(8)),
                child: Center(child: Text("+",style: TextStyle(fontSize: 25),)),
              ),
              SizedBox(width: 70,),
              Container(
            height: 30,
            width: 50,
            decoration: BoxDecoration(color: Colors.grey[350],
            borderRadius: BorderRadius.circular(8)),
            child: Center(child: Text("-",style: TextStyle(fontSize: 25),)),
          ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
           GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/booking');
            },
            child: LoginButton("Finish")),
           SizedBox(
            height: 30,),
               GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/booking');
                },
                child: Text("Book Now !",
                style: TextStyle(color: Colors.redAccent,fontSize: 15),))]);
           
      
    
    
  }
}

Widget bloodTypeRow( String type1,String type2){
  return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
            decoration: BoxDecoration(
              color: Colors.grey[350],borderRadius: BorderRadius.circular(20)),
            width: 180,
            height: 90,
            child: Center(child: Text(type1,style: TextStyle(fontSize: 18),)),),
            SizedBox(
              width: 20,
            ),
            Container(
            decoration: BoxDecoration(
              color: Colors.grey[350],borderRadius: BorderRadius.circular(20)),
            width: 180,
            height: 90,
            child: Center(child: Text(type2,style: TextStyle(fontSize: 18),)),)
            ],
          );
}

Widget LoginButton(String title){
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.redAccent,
        borderRadius: BorderRadius.circular(20)),
        child: TextButton(
          onPressed: (){},
          child: Text(
            title,
          style: TextStyle(fontSize: 18,color: Colors.white),),
        ),
      ),
    );
    
  }