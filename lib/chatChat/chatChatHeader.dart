import 'package:flutter/material.dart';
// import 'utils/theme.dart' as Theme;
import '../components/header.dart';

class ChatChatHeader extends AppBar {
  ChatChatHeader()
      : super(
          // iconTheme: IconThemeData(
          //   color: Colors.black, //change your color here
          // ),
          // backgroundColor: Colors.white,
          leading: FlatButton(
            padding: EdgeInsets.all(8.0),
            textColor: Colors.white,
            child: const Text('Edit'),
            onPressed: () {},
          ),
          title: Header('Chats'),
          // elevation: 0.0,
          // automaticallyImplyLeading: false,
          actions: <Widget>[
            Container(
              child: IconButton(
                icon: Icon(Icons.create),
                onPressed: () {},
              ),
            ),
          ],
        );
}
