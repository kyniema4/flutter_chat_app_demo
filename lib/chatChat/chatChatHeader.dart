import 'package:chat/chatChat/chatchat_edit.dart';
import 'package:flutter/material.dart';
import '../utils/theme.dart' as Theme;
// import '../components/header.dart';
class ChatChatHeader extends AppBar {
      double _kLeadingWidth = 60;

  ChatChatHeader(): super(
    centerTitle: true,
    automaticallyImplyLeading: false,
    // leading: FlatButton(
    //   padding: EdgeInsets.symmetric(horizontal: 10.0),
    //   textColor: Colors.white,
    //   child: const Text('Edit', style: TextStyle(fontSize: 16, fontFamily: 'Proxima-Nova-Regular')),
    //   onPressed: () {},
    // ),
    leading: Builder(builder: (BuildContext context) {
        
      return FlatButton(
        padding: EdgeInsets.all(0),
        textColor: Colors.white,
        child: const Text('Edit', style: TextStyle(fontSize: 16, fontFamily: 'Proxima-Nova-Regular')),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ChatChatEditPage()));
        },
      );
    }),
    title: Text('Chats', style: TextStyle(fontSize: 20, fontFamily: 'Proxima-Nova')),
    backgroundColor: Theme.Colors.purpleMain,
    actions: <Widget>[
        Container(
          child: MaterialButton(
            minWidth: 50,
            padding: EdgeInsets.symmetric(horizontal: 20.0,),
            child: Image(image: AssetImage('assets/images/icon/new_chat.png'),width: 28, fit: BoxFit.contain),
            onPressed: () {},
          ),
          //  child: CircleAvatar(
          //     backgroundColor: Theme.Colors.transparent,
          //     backgroundImage: AssetImage('assets/images/icon/new_chat.png')
          //   )
        ),
      ],
  );}
