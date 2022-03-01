import 'package:dashboard/views/screens/home/Home.dart'; 
import 'package:dashboard/views/screens/User/profile.dart';
import 'package:dashboard/views/screens/home/Home.dart';
import 'package:dashboard/views/page/division_page.dart';
import 'package:dashboard/views/page/people_page.dart'; 
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
  final pages = [ Home() , PeoplePage(),  PeoplePage(), DivisionPage(), ProfilePage()];
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryLightColor,
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          
          height: 70.0, 
          items: <Widget>[
            Icon(Icons.home_outlined, size: 30 , color: Colors.white,),
            Icon(Icons.list, size: 30, color: Colors.white,),
            Icon(Icons.compare_arrows, size: 30, color: Colors.white,),
            Icon(Icons.call_split, size: 30, color: Colors.white,),
            Icon(Icons.perm_identity, size: 30, color: Colors.white,),
          ],
          color: kPrimaryColor,
          buttonBackgroundColor: kPrimaryLightColor,
          backgroundColor: Colors.white,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
          letIndexChange: (index) => true,
        ),
        body:  pages[_page]
      );
  }
}
 
