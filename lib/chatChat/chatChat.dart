import 'package:chat/chatChat/chatContent.dart';
import 'package:flutter/material.dart';
import '../models/user_model.dart';
import 'chatChatHeader.dart';
import 'chatContent.dart';
import '../components/search.dart';
import '../utils/theme.dart' as Theme;
import '../utils/style.dart';
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
          Container(
            height: 35,
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 13.0),
            // padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.0),
              color: Theme.Colors.grey9cd
            ),
            child: TextFormField(
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                hintText: 'Search for message or users',
                enabledBorder: UnderlineInputBorder(      
                  borderSide: BorderSide(color: Theme.Colors.transparent),   
                ),  
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Theme.Colors.transparent),
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Theme.Colors.transparent),
                ),
                prefixIcon: 
                  Icon(Icons.search, color: Theme.Colors.grey330, 
                ),
                // suffixIcon: 
                // icon: Icon(Icons.search, color: Theme.Colors.grey330,),
                // prefixIconConstraints: BoxConstraints(minWidth: 10,)
              ),
              style: TextStyle(fontFamily: 'Proxima-Nova-Regular', fontSize: 14.0),
              textAlign: TextAlign.center,
            ),
          ),
          ChatContentPage(),
        ],
      )
    ));
  }
}
