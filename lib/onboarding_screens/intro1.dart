import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class intro1 extends StatefulWidget {
  const intro1({super.key});

  @override
  State<intro1> createState() => _intro1State();
}

class _intro1State extends State<intro1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(alignment: Alignment.center,
      color: Colors.white,
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          SizedBox(height: 300,width: 300,child: Lottie.asset("assets/intro1.json")),
          SizedBox(height: 20),
         

        Container(
          height: 150,width: 500,
          child: Center(
            child: Text("Look up the times for each prayer",
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ),
        ),
        ],
      ), 
      
      
      ),
    );
  }
}