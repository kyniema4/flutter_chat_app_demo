import 'package:flutter_chat_app_demo/src/mixins/style.dart';
import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';
import 'package:flutter_chat_app_demo/src/mixins/theme.dart' as Theme;
import 'package:flutter_chat_app_demo/src/model/user_model.dart';
import '../../model/message_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';


class ChatChatDetail extends StatefulWidget {
  final UserModel user;
  ChatChatDetail({this.user});
  @override
  _ChatChatDetailState createState() => _ChatChatDetailState();
}

class _ChatChatDetailState extends State<ChatChatDetail>{
  final TextEditingController textController = new TextEditingController();
  bool isTextFiledFocus = false;
  bool isComposing = false;
  //final List<ChatMessage> _messages = <ChatMessage>[];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.Colors.purpleMain100,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.Colors.purpleMain,
        automaticallyImplyLeading: false,
        leading: MaterialButton(
          padding: EdgeInsets.only(left: 10.0),
          child: Icon(Icons.arrow_back_ios, color: Colors.white, size: 26.0),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Column(children: <Widget>[
          Text(widget.user.userName, style: titleUserMessage),
          Text('online', style: textOnlineStyle),
        ]),
        // ),
        actions: <Widget>[
          MaterialButton(
              onPressed: () {},
              padding: EdgeInsets.only(right: 20.0),
              minWidth: 0,
              child: CircleAvatar(
                  backgroundColor: Theme.Colors.purpleMain400,
                  backgroundImage: AssetImage(widget.user.avatar)))
        ],
      ),
      body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(children: <Widget>[
            Expanded(
              child: Container(
                  child: ListView.builder(
                      // reverse: true,
                      padding: EdgeInsets.only(top: 15.0),
                      itemCount: messages.length,
                      itemBuilder: (BuildContext context, int index) {
                        final Message message = messages[index];
                        final bool isMe = message.sender.id == currentUser.id;
                        //return _buiderMessage(message, isMe);
                      })),
            ),
            //_buildMessageComposer(),
          ])),
    );
  }

  _buiderMessage(Message message, bool isMe) {
    final Container msg = Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.8),
            child: Bubble(
              margin: isMe
                  ? BubbleEdges.only(top: 10.0, bottom: 10.0, right: 20.0)
                  : BubbleEdges.only(top: 10.0, bottom: 10.0, left: 20.0),
              padding: BubbleEdges.symmetric(horizontal: 25.0, vertical: 15.0),
              nip: isMe ? BubbleNip.rightBottom : BubbleNip.leftBottom,
              color: isMe ? Theme.Colors.purpleMain : Colors.white,
              child: Text(
                message.text,
                style: TextStyle(
                    color: isMe ? Colors.white : Color(0xff666666),
                    fontSize: 16.0,
                    fontFamily: 'Proxima-Nova-Regular'),
              ),
            ),
          )
        ],
      ),
    );
    if (isMe) {
      return msg;
    }
    return Row(children: <Widget>[
      msg,
    ]);
  }

  _buildMessageComposer() {
    return Container(
      constraints: BoxConstraints(
        maxHeight: 130.0,
        // minHeight: 64,
      ),
      color: Colors.white,
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          decoration: BoxDecoration(
            border: Border(top: borderList),
          ),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: paddingBottom15,
                  child: InkWell(
                      onTap: () {},
                      child: Image(
                          image: AssetImage(
                            'assets/images/icon/camera_icon.png',
                          ),
                          fit: BoxFit.contain,
                          height: 24.0)),
                ),
                SizedBox(width: 20.0),
                Padding(
                  padding: paddingBottom15,
                  child: InkWell(
                      onTap: () {},
                      child: Image(
                          image: AssetImage(
                            'assets/images/icon/attach_icon.png',
                          ),
                          fit: BoxFit.contain,
                          height: 24.0)),
                ),
                SizedBox(width: 20.0),
                Expanded(
                  child: Focus(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 13.0),
                      child: TextField(
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration.collapsed(
                            hintText: 'Type message...'),
                        style: textInputStyle,
                        // minLines: 1,
                        maxLines: null,
                        controller: textController,
                        onChanged: (String text) {
                          setState(() {
                            isComposing = text.length > 0;
                          });
                        },
                      ),
                    ),
                    onFocusChange: (hasFocus) {
                      setState(() {
                        isTextFiledFocus = hasFocus;
                      });
                    },
                  ),
                ),
                SizedBox(width: 20.0),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: InkWell(
                      onTap: isComposing
                          ? () => _handleSubmitted(textController.text)
                          : null,
                      child: Image(
                          image: isTextFiledFocus
                              ? AssetImage('assets/images/icon/send_icon.png')
                              : AssetImage(
                                  'assets/images/icon/microphone_icon.png'),
                          fit: BoxFit.contain,
                          height: 40.0)),
                )
              ])),
    );
  }

  void _handleSubmitted(String text) {
    textController.clear();
    setState(() {
      isComposing = false;
    });
    if (text.length > 0) {
     print(text);
    }
  }
}
