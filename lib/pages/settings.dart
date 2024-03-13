import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:waytodeen2/themes/theme_provider.dart';
import 'home.dart';
import 'package:waytodeen2/themes/theme_provider.dart';
class settings extends StatelessWidget {
  const settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // appBar: AppBar(title: Text('Settings')),
      body: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.all(16),
          margin: const EdgeInsets.all(25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text("Dark Mode",style: TextStyle(fontWeight:FontWeight.bold),),
        //toogle button
      CupertinoSwitch(value:Provider.of<ThemeProvider>(context,listen: false).isDarkMode,
       onChanged: (value)=>Provider.of<ThemeProvider>(context,listen: false).toggleTheme(),
       )
      ]),
      
      ),
    );
  }
}