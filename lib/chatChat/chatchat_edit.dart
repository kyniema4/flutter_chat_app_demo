import 'package:chat/chatChat/chatContent.dart';
import 'package:flutter/material.dart';
import '../models/chat_model.dart';
import '../utils/theme.dart' as Theme;
import 'chatContent.dart';
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
            //  child: CircleAvatar(
            //     backgroundColor: Theme.Colors.transparent,
            //     backgroundImage: AssetImage('assets/images/icon/new_chat.png')
            //   )
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
      body: Container(
        color: Theme.Colors.purpleMain100,
        child: ListView.builder(
          padding: EdgeInsets.only(top: 30.0),
          itemCount: chats.length,
          itemBuilder:(BuildContext context, int index) {
            final Message chat = chats[index];
            return Container(
              margin: EdgeInsets.only(top: 0.0, left: 5.0, right: 20.0, bottom: 18.0),
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
                      padding: EdgeInsets.only(bottom: 20.0),
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(width: 0.5,color: Theme.Colors.warmGray))
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                chat.sender.name,
                                style : TextStyle(
                                  fontFamily: 'Proxima-Nova',
                                  color: Theme.Colors.grey400, fontSize: 16
                                  )
                                ),
                              Text(
                                chat.time,
                                style : TextStyle(
                                  fontFamily: 'Proxima-Nova-Regular',
                                  color: Theme.Colors.grey350, fontSize: 14
                                  )
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
                              style : TextStyle(
                                fontFamily: 'Proxima-Nova-Regular',
                                color: Theme.Colors.grey350, fontSize: 15
                              )
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
      // decoration: new BoxDecoration(),

      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 3.0),
        decoration: BoxDecoration(
          color: Theme.Colors.grey100,
          border: Border( top: BorderSide(width: 0.5, color: Theme.Colors.warmGray )),
        ),
        child: RaisedButton(
          color: Theme.Colors.red500,
          padding: EdgeInsets.symmetric(vertical: 12.0,),
          child: Text('DELETE', style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'Proxima-Nova')),
          onPressed: () {},
        ),
      )

      ),

    );
  }
}
