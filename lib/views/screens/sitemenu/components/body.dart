import 'package:dashboard/views/screens/home/Home.dart'; 
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:dashboard/constants.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen 
    return Scaffold(
          backgroundColor: Colors.grey[300],
          body: Stack(
            children: <Widget> [
              menu(context),
            ],
          )
    );
  }
}
Widget menu(context){
  
  return 
   Padding(
     padding: const EdgeInsets.only(left: 16),
     child: Align(
       alignment: Alignment.centerLeft,
       child: 
         Column(
           mainAxisSize: MainAxisSize.min,
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Dashboard", style: TextStyle(color: Colors.white, fontSize: 20),),
            SizedBox(height: 10),
            Text("Menu 1", style: TextStyle(color: Colors.white, fontSize: 20),),
             SizedBox(height: 10),
            Text("Menu 2", style: TextStyle(color: Colors.white, fontSize: 20),),
             SizedBox(height: 10),
            Text("Menu 3", style: TextStyle(color: Colors.white, fontSize: 20),),
          ],
        ), 
     ),
   );
}
 
