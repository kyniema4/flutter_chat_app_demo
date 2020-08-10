import 'package:chat/chatChat/chatContent.dart';
import 'package:flutter/material.dart';
import '../models/user_model.dart';
import 'chatChatHeader.dart';
import 'chatContent.dart';
class ChatChatPage extends StatefulWidget{
  User user;
   ChatChatPage({this.user});
  @override
  _ChatChatPageState createState() => _ChatChatPageState();
}
class _ChatChatPageState extends State<ChatChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ChatChatHeader(),
      body: Container(
        child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              // onChanged: (value) {
              //   filterSearchResults(value);
              // },
              // controller: editingController,
              decoration: InputDecoration(
                  // labelText: "Search",
                  hintText: "Search for message or users",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)))),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          ChatContentPage(),
         
        ],
      // ),
      )
    ));
  }
}
