import 'package:dashboard/Screens/Home/Home.dart'; 
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
      body: BottomNavBar(),
    );
  }
}


class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple,
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          
          height: 70.0, 
          items: <Widget>[
            Icon(Icons.home_outlined, size: 30 , color: kPrimaryColor,),
            Icon(Icons.list, size: 30, color: kPrimaryColor,),
            Icon(Icons.compare_arrows, size: 30, color: kPrimaryColor,),
            Icon(Icons.call_split, size: 30, color: kPrimaryColor,),
            Icon(Icons.perm_identity, size: 30, color: kPrimaryColor,),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.purple,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
          letIndexChange: (index) => true,
        ),
        body:  Home()
      );
  }
}
 
