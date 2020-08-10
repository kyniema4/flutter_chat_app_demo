import 'package:flutter/material.dart';
import '../components/header.dart';
import 'chatContent.dart';

// void main() => runApp(MaterialApp(
//       home: ChatChatEditPage(),
//     ));

class ChatChatEditPage extends StatefulWidget {
  @override
  _ChatChatEditPage createState() => _ChatChatEditPage();
}

class _ChatChatEditPage extends State<ChatChatEditPage> {
  bool monVal = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Header('Chats'),
        actions: <Widget>[
          Padding(
            // padding: EdgeInsets.only(bottom: 15.0),
            child: InkWell(
                onTap: () {},
                child: Image(
                    image: AssetImage(
                      'assets/images/icon/camera_icon.png',
                    ),
                    fit: BoxFit.contain,
                    height: 24.0)),
          ),
          // Container(
          //   child: IconButton(
          //     icon: Icon(Icons.close),
          //     onPressed: () {
          //       Navigator.pop(context);
          //     },
          //   ),
          // ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Row(children: <Widget>[
            Expanded(
              flex: 1,
              child: Checkbox(
                value: monVal,
                onChanged: (bool value) {
                  setState(() {
                    monVal = value;
                  });
                },
              ),
            ),
            Expanded(
              flex: 5,
              child: ChatContentPage(),
            ),
          ]),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          child: Row(
            children: <Widget>[
              RaisedButton(
                onPressed: () {},
                child: const Text('Enabled Button',
                    style: TextStyle(fontSize: 15)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
