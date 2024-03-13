import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class intro3 extends StatefulWidget {
  const intro3({super.key});

  @override
  State<intro3> createState() => _intro3State();
}

class _intro3State extends State<intro3> {
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
          SizedBox(height: 300,width: 300,child: Lottie.asset("assets/intro3.json")),
          SizedBox(height: 20),
         

     
          
         Text("Find the right direction of qibla",
          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
        ],
      ), 
      
      
      ),
    );
  }
}