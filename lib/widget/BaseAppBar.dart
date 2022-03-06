import 'package:flutter/material.dart';
import 'package:dashboard/constants.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor = kPrimaryColor ;
  final Text title;
  final AppBar appBar;
  final List<Widget> widgets;

  const BaseAppBar(
      {Key key,
      this.title,
      this.appBar,
      this.widgets})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: Icon(
        Icons.menu,
        color: Colors.white,
      ),
      title: title,
      titleTextStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold , fontSize: 22),
      backgroundColor: backgroundColor,
      actions: widgets,
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}
