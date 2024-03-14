


import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:waytodeen2/onboarding_screens/on_board.dart';
import 'package:waytodeen2/pages/hidden_drawer.dart';
import 'package:waytodeen2/pages/home.dart';
import 'package:waytodeen2/main.dart';
import 'package:waytodeen2/themes/theme_provider.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => splashState();
}

class splashState extends State<splash> {

  static const String KeyPressed ="pressed";
  List skills=<String>[
  
  "WAY TO DEEN",
  ];
  @override
  void initState() {
    //seting time
    /*
    Future.delayed(Duration(seconds:6),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>/* HiddenDrawer()*/onBoard()));
    });
    */

    super.initState();
    whereTOgo();

    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        alignment: Alignment.center,
      color: Colors.white,
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          SizedBox(
            height: 300,width: 300,
          child: Lottie.asset("assets/splash.json")
          ),
          SizedBox(height: 20),
          buildAnimatedText(),

        Text("Loading..."),
        ],
      ), 
      
      
      ),
    );
  }
  Widget buildAnimatedText()=>AnimatedTextKit(
    //animatedTexts: [buildText1()],
   
    animatedTexts: [
     for(var i=0;i<skills.length;i++)buildText(i),  
  ],
  pause: const Duration(seconds:2),
  );

 
  buildText(int index){
   
    return TypewriterAnimatedText(
      
     skills[index],
     textStyle: const TextStyle(
      fontSize: 32.00,fontWeight: FontWeight.bold,color: Colors.black),
      );
    
  }
  
  void whereTOgo () async {
   
   var sharedPref = await SharedPreferences.getInstance();
    var isPressed= sharedPref.getBool(KeyPressed);

    Future.delayed(Duration(seconds:6),(){
      
      if(isPressed!=null){
        if(isPressed){
           Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>HiddenDrawer()));
 
        }
        else{
          Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>/* HiddenDrawer()*/onBoard()));
 
        }
        
      }else{
         Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>/* HiddenDrawer()*/onBoard()));
 
      }


     // Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>/* HiddenDrawer()*/onBoard()));
    });

  }
}

