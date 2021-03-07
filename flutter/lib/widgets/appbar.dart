import 'package:flutter/material.dart';

class MyAppBar {
  static BuildContext ctx;
  static PreferredSizeWidget myAppBar(Widget appbarIcon) {
    return AppBar(
      title: Text('Unseen Passage'),
      backgroundColor: Colors.orangeAccent,
      leading: appbarIcon,
      actions: [
        FlatButton(
            hoverColor: Colors.lightBlue,
            onPressed: () {},
            child: Text(
              'Home',
              style: TextStyle(
                  color: Colors.white, fontFamily: 'Gilroy', fontSize: 17),
            )),
        FlatButton(
            hoverColor: Colors.lightBlue,
            onPressed: () {},
            child: Text(
              'e-Xams',
              style: TextStyle(
                  color: Colors.white, fontFamily: 'Gilroy', fontSize: 17),
            )),
        FlatButton(
            hoverColor: Colors.lightBlue,
            onPressed: () {},
            child: Text(
              'Blogs',
              style: TextStyle(
                  color: Colors.white, fontFamily: 'Gilroy', fontSize: 17),
            )),
        FlatButton(
            hoverColor: Colors.lightBlue,
            onPressed: () {},
            child: Text(
              'Contact',
              style: TextStyle(
                  color: Colors.white, fontFamily: 'Gilroy', fontSize: 17),
            )),
        FlatButton(
            hoverColor: Colors.lightBlue,
            onPressed: () {},
            child: Text(
              'About Us',
              style: TextStyle(
                  color: Colors.white, fontFamily: 'Gilroy', fontSize: 17),
            )),
      ],
    );
  }
}
