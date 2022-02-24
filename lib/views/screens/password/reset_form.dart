import 'package:flutter/material.dart';
import 'package:dashboard/constants.dart';
// import 'package:login_signup_ui_starter/theme.dart';

class ResetForm extends StatelessWidget {
  const ResetForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: TextFormField(
          decoration: InputDecoration(
              hintText: 'Email',
              hintStyle: TextStyle(color: kPrimaryColor),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: kPrimaryColor)))),
    );
  }
}
