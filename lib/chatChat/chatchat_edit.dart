import 'package:flutter/material.dart';
import '../components/header.dart';

class ChatChatEditPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Header('Chats'),
      actions: <Widget>[
        Container(
          child: IconButton(
            icon: Icon(Icons.close),
            onPressed: () {},
          ),
        ),
      ],
    ));
  }
}
