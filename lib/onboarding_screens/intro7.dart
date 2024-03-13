import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class intro7 extends StatefulWidget {
  const intro7({super.key});

  @override
  State<intro7> createState() => _intro7State();
}

class _intro7State extends State<intro7> {
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
          SizedBox(height: 300,width: 300,child: Lottie.asset("assets/intro7.json")),
          SizedBox(height: 20),
         

        Container(
          height: 150,width: 500,
          child: Center(
            child: Text("Lets explore this wonderful app",
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ),
        ),
        ],
      ), 
      
      
      ),
    );
  }
}