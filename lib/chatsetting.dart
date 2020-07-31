import 'package:flutter/material.dart';

class ChatSettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(child: Text('Settings')),
        Container(
          child: Center(
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 50,
                  backgroundImage:
                      AssetImage('assets/images/avt_chat_setting.png'),
                ),
                Text(
                  'This is Google Fonts',
                  style: TextStyle(
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'MontserratBold'),
                ),
                Text('shvdds'),
              ],
            ),
          ),
        ),
        Container(
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('Two-line ListTile'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
        ),
        Container(
          child: RaisedButton(
            onPressed: () {},
            child: const Text('Enabled Button', style: TextStyle(fontSize: 15)),
          ),
        ),
      ],
    );
  }
}
