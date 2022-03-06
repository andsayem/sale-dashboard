import 'package:dashboard/models/user.dart';
import 'package:dashboard/utils/user_preferences.dart';
import 'package:dashboard/widget/BaseAppBar.dart'; 
import 'package:dashboard/widget/button_widget.dart';
import 'package:dashboard/widget/profile_widget.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;
    return Scaffold(
       appBar: BaseAppBar(
          title: Text('My Profile'),
          appBar: AppBar(),
          widgets: <Widget>[Icon(Icons.more_vert)], 
        ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ProfileWidget(
            ImagePath: user.imagePath,
            OnClicked: () async {},
          ),
          const SizedBox(height: 24),
          buildname(user),
          const SizedBox(height: 24),
          Center(
            child: buildUpgradeButton(),
          )
        ],
      ),
    );
  }

  Widget buildname(User user) => Column(
        children: [
          Text(
            user.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(user.email, style: TextStyle(color: Colors.grey))
        ],
      );

  Widget buildUpgradeButton() => ButtonWidget(
        text: 'Upgrade To Pro',
        onClicked: () {},
      );
}
