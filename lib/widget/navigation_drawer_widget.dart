import 'package:shared_preferences/shared_preferences.dart';
import 'package:dashboard/constants.dart';
import 'package:flutter/material.dart';
import 'package:dashboard/views/page/division_page.dart';
import 'package:dashboard/views/page/people_page.dart';
import 'package:dashboard/views/page/user_page.dart';
import 'package:dashboard/views/homepage.dart';
import 'package:dashboard/app_theme.dart';

import '../views/screens/login/login_screen.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  BuildContext get context => null;
  @override
  Widget build(BuildContext context) {
    final name = 'Abu Sayed';
    final user_id = '8065';
    final urlImage =
        'https://scontent.fdac127-1.fna.fbcdn.net/v/t39.30808-1/p320x320/271976019_2087658738063209_8820353234475578895_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=7206a8&_nc_eui2=AeHCLM7PH2QFFV2JJleJ3MJqDS3MbpHeo6QNLcxukd6jpOeN3hA7vdmot8GKmxExRhHyogBb_Yd8LR0PMUvWRmIt&_nc_ohc=Z0izBa5oMe8AX_RwUa0&_nc_ht=scontent.fdac127-1.fna&oh=00_AT9U6TCoHPkUn6BqL1LXUYc_A5rh-3ocdjh8mZEzPgo6Fw&oe=61FF8BE7';

    return Drawer(
      child: Material(
        color: CustomeTheme.primaryLight,
        child: ListView(
          children: <Widget>[
            buildHeader(
              urlImage: urlImage,
              name: name,
              email: user_id,
              onClicked: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => UserPage(
                  name: name,
                  urlImage: urlImage,
                  // url Image
                ),
              )),
            ),
            // UserAccountsDrawerHeader(
            //   accountName: Text(name),
            //   accountEmail: Text(user_id),
            //   currentAccountPicture: CircleAvatar(
            //     backgroundImage: NetworkImage(urlImage),
            //   ),
            // ),
            Container(
              padding: padding,
              height: MediaQuery.of(context).size.height * 1,
              color: CustomeTheme.secondaryLight,
              child: Column(
                children: [
                  const SizedBox(height: 3),
                  buildSearchField(),
                  const SizedBox(height: 6),
                  buildMenuItem(
                    text: 'Dashboard Summary Report',
                    icon: Icons.dashboard_customize,
                    onClicked: () => selectedItem(context, 0),
                  ),
                  const SizedBox(height: 5),
                  buildMenuItem(
                    text: 'Channel Wise Report',
                    icon: Icons.repeat_rounded,
                    onClicked: () => selectedItem(context, 1),
                  ),
                  const SizedBox(height: 5),
                  buildMenuItem(
                    text: 'Channel Head Wise Report',
                    icon: Icons.workspaces_outline,
                    onClicked: () => selectedItem(context, 2),
                  ),
                  const SizedBox(height: 5),
                  buildMenuItem(
                    text: 'Division Wise Report',
                    icon: Icons.archive_sharp,
                    onClicked: () => selectedItem(context, 2),
                  ),
                  const SizedBox(height: 2),
                  Divider(color: Colors.black),
                  buildMenuItem(
                    text: 'Profile',
                    icon: Icons.person_outlined,
                    onClicked: () => selectedItem(context, 3),
                  ),
                  const SizedBox(height: 5),
                  buildMenuItem(
                    text: 'Change password',
                    icon: Icons.password_outlined,
                    onClicked: () => selectedItem(context, 4),
                  ),
                  const SizedBox(height: 5),
                  buildMenuItem(
                    text: 'Login',
                    icon: Icons.login,
                    onClicked: () => selectedItem(context, 5),
                  ),
                  Divider(
                    height: 1,
                    color: AppTheme.grey.withOpacity(0.6),
                  ),
                  Column(
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          'Sign Out',
                          style: TextStyle(
                            fontFamily: AppTheme.fontName,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: AppTheme.white,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        trailing: Icon(
                          Icons.power_settings_new,
                          color: Colors.red,
                        ),
                        onTap: logout,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).padding.bottom,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHeader({
    String urlImage,
    String name,
    String email,
    VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: padding.add(EdgeInsets.symmetric(vertical: 20)),
          child: Row(
            children: [
              CircleAvatar(radius: 30, backgroundImage: NetworkImage(urlImage)),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email,
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      );

  Widget buildSearchField() {
    final color = Colors.white;

    return TextField(
      style: TextStyle(color: color),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        hintText: 'Search',
        hintStyle: TextStyle(color: color),
        prefixIcon: Icon(Icons.search, color: color),
        filled: true,
        fillColor: Colors.white12,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
      ),
    );
  }

  Widget buildMenuItem({
    String text,
    IconData icon,
    VoidCallback onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => PeoplePage(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DivisionPage(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => HomePage(),
        ));
        break;
    }
  }

  void logout() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    //localStorage.remove('user');
    localStorage.remove('token');
    Navigator.push(
        context, new MaterialPageRoute(builder: (context) => LoginScreen()));
    //  }
  }
}
