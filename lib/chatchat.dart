import 'package:flutter/material.dart';
import 'utils/theme.dart' as Theme;
class ChatchatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        child: Text('Giang', style: TextStyle(color: Theme.Colors.purpleMain),),
      ),
    );
  }
}
