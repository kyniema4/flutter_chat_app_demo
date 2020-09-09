import 'package:chat/models/chat_model.dart';
import 'package:flutter/material.dart';
import 'package:chat/chatchat_detail.dart';
import '../utils/theme.dart' as Theme;
import '../utils/style.dart';

class ChatContentPage extends StatefulWidget {
  final Message msg;
  ChatContentPage({this.msg});
  @override
  _ChatContentPageState createState() => _ChatContentPageState();
}

class _ChatContentPageState extends State<ChatContentPage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Theme.Colors.purpleMain100,
        child: ListView.builder(
            padding: EdgeInsets.only(top: 20.0),
            itemCount: chats.length,
            itemBuilder: (BuildContext context, int index) {
              final Message chat = chats[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => ChatChatDetail(user: chat.sender)));
                },
                child: Container(
                    margin: listItemStyle,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            chat.sender.avtUrl,
                          ),
                          radius: 40.0,
                        ),
                        SizedBox(width: 10.0),
                        Expanded(
                          child: Container(
                            padding: marginBottom20,
                            decoration: BoxDecoration(
                                border: Border(bottom: borderList)),
                            child: ConstrainedBox(
                              constraints: BoxConstraints(
                                minHeight: 60,
                              ),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(chat.sender.name,
                                              style: nameUserList),
                                          Text(chat.time, style: timeChat),
                                        ]),
                                    SizedBox(height: 8.0),
                                    Container(
                                      // padding: EdgeInsets.symmetric(vertical: 10.0),
                                      child: Text(chat.text,
                                          // maxLines: 2,
                                          // overflow: TextOverflow.ellipsis,
                                          style: textChatList),
                                    )
                                  ]),
                            ),
                          ),
                        )
                      ],
                    )),
              );
            }),
      ),
    );
  }
}
