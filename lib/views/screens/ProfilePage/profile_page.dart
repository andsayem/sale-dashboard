import 'package:dashboard/constants.dart';
import 'package:dashboard/models/user.dart';
import 'package:dashboard/utils/user_preferences.dart';
import 'package:dashboard/widget/BaseAppBar.dart';
import 'package:dashboard/widget/button_widget.dart';
// import 'package:dashboard/widget/numbers_widget.dart';
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
          // Center(
          //   child: buildUpgradeButton(),
          // ),
          // const SizedBox(
          //   height: 24,
          // ),
          // NumberWidget(),
          // const SizedBox(
          //   height: 48,
          // ),
          buildAbout(user),
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

  Widget buildAbout(User user) => Container(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.person,
                  color: kPrimaryColor,
                  size: 24,
                ),
                Column(
                  children: [
                    Text(
                      'Full Name',
                      style: TextStyle(
                          fontSize: 15, height: 2, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      user.name,
                      style: TextStyle(
                        fontSize: 20,
                        height: 0.5,
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.person,
                  color: kPrimaryColor,
                  size: 24,
                ),
                Column(
                  children: [
                    Text(
                      'Designation',
                      style: TextStyle(
                          fontSize: 24, height: 2, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      user.designation,
                      style: TextStyle(
                        fontSize: 24,
                        height: 0.5,
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.person,
                  color: kPrimaryColor,
                  size: 24,
                ),
                Column(
                  children: [
                    Text(
                      'Department',
                      style: TextStyle(
                          fontSize: 24, height: 2, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      user.department,
                      style: TextStyle(
                        fontSize: 24,
                        height: 0.5,
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.person,
                  color: kPrimaryColor,
                  size: 24,
                ),
                Column(
                  children: [
                    Text(
                      'User Id',
                      style: TextStyle(
                          fontSize: 24, height: 2, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      user.id,
                      style: TextStyle(
                        fontSize: 24,
                        height: 0.5,
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.person,
                  color: kPrimaryColor,
                  size: 24,
                ),
                Column(
                  children: [
                    Text(
                      'Corporate Mail',
                      style: TextStyle(
                          fontSize: 24, height: 2, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      user.email,
                      style: TextStyle(
                        fontSize: 15,
                        height: 0.5,
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.person,
                  color: kPrimaryColor,
                  size: 24,
                ),
                Column(
                  children: [
                    Text(
                      'Phone Number',
                      style: TextStyle(
                          fontSize: 24, height: 2, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      user.phone,
                      style: TextStyle(
                        fontSize: 24,
                        height: 0.5,
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ],
            ),

            // Text(
            //   'Full Name',
            //   style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            // ),
            // const SizedBox(height: 16),
            // Text(
            //   user.name,
            //   style: TextStyle(
            //     fontSize: 24,
            //     height: 0.5,
            //   ),
            // ),
            // Text(
            //   'Designation',
            //   style: TextStyle(
            //       fontSize: 24, height: 2, fontWeight: FontWeight.bold),
            // ),
            // const SizedBox(height: 16),
            // Text(
            //   user.designation,
            //   style: TextStyle(fontSize: 16, height: 0.5),
            // ),
            // Text(
            //   'Designation',
            //   style: TextStyle(
            //       fontSize: 24, height: 2, fontWeight: FontWeight.bold),
            // ),
            // const SizedBox(height: 16),
            // Text(
            //   user.designation,
            //   style: TextStyle(fontSize: 16, height: 0.5),
            // ),
            // Text(
            //   'Department',
            //   style: TextStyle(
            //       fontSize: 24, height: 2, fontWeight: FontWeight.bold),
            // ),
            // const SizedBox(height: 16),
            // Text(
            //   user.department,
            //   style: TextStyle(fontSize: 16, height: 0.5),
            // ),
            // Text(
            //   'User ID',
            //   style: TextStyle(
            //       fontSize: 24, height: 2, fontWeight: FontWeight.bold),
            // ),
            // const SizedBox(height: 16),
            // Text(
            //   user.id,
            //   style: TextStyle(fontSize: 16, height: 0.5),
            // ),
            // Text(
            //   'Corporate Mail',
            //   style: TextStyle(
            //       fontSize: 24, height: 2, fontWeight: FontWeight.bold),
            // ),
            // const SizedBox(height: 16),
            // Text(
            //   user.email,
            //   style: TextStyle(fontSize: 16, height: 0.5),
            // ),
            // Text(
            //   'Phone Number',
            //   style: TextStyle(
            //       fontSize: 24, height: 2, fontWeight: FontWeight.bold),
            // ),
            // const SizedBox(height: 16),
            // Text(
            //   user.phone,
            //   style: TextStyle(fontSize: 16, height: 0.5),
            // ),
          ],
        ),
      );
}
