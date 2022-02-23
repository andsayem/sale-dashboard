import 'package:flutter/material.dart';
import 'package:shopx/constants.dart';

class OtpForm extends StatelessWidget {
  const OtpForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: TextFormField(
          decoration: InputDecoration(
              hintText: 'OTP',
              hintStyle: TextStyle(color: kPrimaryColor),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: kPrimaryColor)))),
    );
  }
}
