import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class intro4 extends StatefulWidget {
  const intro4({super.key});

  @override
  State<intro4> createState() => _intro4State();
}

class _intro4State extends State<intro4> {
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
          SizedBox(height: 300,width: 300,child: Lottie.asset("assets/intro4.json")),
          SizedBox(height: 20),
         

               
          Text("Track your Tazbih count with the",
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Text("Counter",
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
         
        ],
      ), 
      
      
      ),
    );
  }
}