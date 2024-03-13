import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class intro2 extends StatefulWidget {
  const intro2({super.key});

  @override
  State<intro2> createState() => _intro2State();
}

class _intro2State extends State<intro2> {
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
          SizedBox(height: 300,width: 300,child: Lottie.asset("assets/intro2.json")),
          SizedBox(height: 20),
   
           Text("Unlock the wisdom of the Quran in ",
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Text("clear English translation",
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

      
        ],
        
      ), 
      
      
      ),
    );
  }
}