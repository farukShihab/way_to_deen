import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class intro6 extends StatefulWidget {
  const intro6({super.key});

  @override
  State<intro6> createState() => _intro6State();
}

class _intro6State extends State<intro6> {
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
          SizedBox(height: 300,width: 300,child: Lottie.asset("assets/intro6.json")),
          SizedBox(height: 20),
         

        Text(
          "From date to Hijri Date Finder",
          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      
        ],
      ), 
      
      
      ),
    );
  }
}