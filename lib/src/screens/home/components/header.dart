import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String title;

  Header(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'MontserratBold'),
    );

    // return Text(
    //   title,
    //   style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
    // );
  }
}
