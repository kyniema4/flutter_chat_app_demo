import 'package:flutter/material.dart';
import '../models/chat_model.dart';
import '../utils/theme.dart' as Theme;
import '../utils/style.dart';
import 'package:circular_check_box/circular_check_box.dart';

class ChatChatEditPage extends StatefulWidget{
  final Message msg;
  ChatChatEditPage({this.msg});
  @override
  _ChatChatEditPageState createState() => _ChatChatEditPageState();
}
class _ChatChatEditPageState extends State<ChatChatEditPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text('Edit Chats', style: TextStyle(fontSize: 20, fontFamily: 'Proxima-Nova')),
        backgroundColor: Theme.Colors.purpleMain,
        actions: <Widget>[
          Container(
            child: MaterialButton(
              minWidth: 50,
              padding: EdgeInsets.symmetric(horizontal: 20.0,),
              child: Image(image: AssetImage('assets/images/icon/icon_close.png'),width: 22, fit: BoxFit.contain),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ],
      ),
      body: Container(
        color: Theme.Colors.purpleMain100,
        child: ListView.builder(
          padding: EdgeInsets.only(top: 30.0),
          itemCount: chats.length,
          itemBuilder:(BuildContext context, int index) {
            final Message chat = chats[index];
            return Container(
              margin: listItemEditStyle,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: <Widget>[
                      CircularCheckBox(
                        value: chat.isCheck,
                        checkColor: Colors.white,
                        activeColor: Theme.Colors.purpleMain,
                        inactiveColor: Theme.Colors.purpleMain400,
                        disabledColor: Colors.grey,
                        onChanged: (val) => setState(() {
                          chat.isCheck = !chat.isCheck;
                          }
                        ) ),
                      CircleAvatar( backgroundImage:AssetImage(chat.sender.avtUrl),radius: 40.0, ),
                    ]
                  ),
                  SizedBox(width: 10.0),
                  Expanded(
                    child: Container(
                      padding: marginBottom20,
                      decoration: BoxDecoration(
                         border: Border( bottom: borderList),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                chat.sender.name,
                                style: nameUserList
                              ),
                              Text(
                                chat.time,
                                style : timeChat
                              ),
                            ]
                          ),
                          SizedBox(height: 8.0),
                          Container(
                            // padding: EdgeInsets.only(bottom: 18.0),
                            child: Text(
                              chat.text,
                              // maxLines: 3,
                              // overflow: TextOverflow.ellipsis,
                              style: textChatList
                            ),
                          )
                        ]
                      ),
                    ),
                  ),
                ],
              )
            );
          }
        ),
    ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 3.0),
          decoration: deleteBarStyle,
          child: RaisedButton(
            color: Theme.Colors.red500,
            padding: EdgeInsets.symmetric(vertical: 12.0,),
            child: Text('DELETE', style: deleteButtonStyle),
            onPressed: () {},
          ),
        )
      ),
    );
  }
}
