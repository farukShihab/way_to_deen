import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/main.dart';
import 'package:lottie/lottie.dart';

class intro5 extends StatefulWidget {
  const intro5({super.key});

  @override
  State<intro5> createState() => _intro5State();
}

class _intro5State extends State<intro5> {
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
          SizedBox(height: 300,width: 300,child: Lottie.asset("assets/intro5.json")),
          SizedBox(height: 20),
         

    
          Text("Immerse yourself in the divine",
        
          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          Text("words with our 'Audio Quran' ",
        
          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        ],
      ), 
      
      
      ),
    );
  }
}