import 'package:flutter/material.dart';
import 'utils/theme.dart' as Theme;
import 'models/chat_model.dart';
import 'models/user_model.dart';

class ChatChatDetail extends StatefulWidget {
  final User user;
  ChatChatDetail({this.user});
  @override
  _ChatChatDetailState createState() => _ChatChatDetailState();
}

class _ChatChatDetailState extends State<ChatChatDetail> {
  bool isTextFiledFocus = false;
  
  _buiderMessage(Message message, bool isMe) {
    final Column msg = Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Container(
          margin: isMe ? EdgeInsets.only(top: 10.0, bottom: 10.0, right: 20.0)
                      : EdgeInsets.only(top: 10.0, bottom: 10.0,left: 20.0),
          padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
          constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.7),
          decoration: new BoxDecoration(
            color: isMe ? Theme.Colors.purpleMain : Colors.white,
            borderRadius: isMe  ? 
                  BorderRadius.only(
                    topLeft: Radius.circular(6.0),
                    topRight: Radius.circular(6.0),
                    bottomLeft: Radius.circular(6.0),

                  ) 
                : BorderRadius.only(
                    topLeft: Radius.circular(6.0),
                    topRight: Radius.circular(6.0),
                    bottomRight: Radius.circular(6.0),
                  ),
            boxShadow: [
              BoxShadow(
                color: Theme.Colors.purpleMain.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 5,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Text(
                  message.text,
                  style: TextStyle(
                    color: isMe ? Colors.white : Color(0xff666666),
                    fontSize: 16.0,
                    fontFamily: 'Proxima-Nova-Regular'
                  ),
                ),
              
            ],
          ),
        )
      ]
    );
    if(isMe) {
      return msg;
    }
    return Row(
      children: <Widget>[
        msg,
      ]
    );
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
          border: Border( top: BorderSide(width: 0.5, color: Theme.Colors.warmGray )),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 15.0),
              child: InkWell(
                onTap: () {},
                child: Image(image: AssetImage('assets/images/icon/camera_icon.png', ),fit: BoxFit.contain, height: 24.0)
              ),
            ),
            SizedBox(width: 20.0),
            Padding(
              padding: EdgeInsets.only(bottom: 15.0),
              child: InkWell(
                onTap: () {},
                child: Image(image: AssetImage('assets/images/icon/attach_icon.png', ),fit: BoxFit.contain, height: 24.0)
              ),
            ),
            SizedBox(width: 20.0),
            Expanded(
              child: Focus(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 13.0),
                  child:TextFormField(
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration.collapsed(hintText: 'Type message...'),
                    style: TextStyle(fontFamily: 'Proxima-Nova-Regular', fontSize: 16.0),
                    // minLines: 1,
                    maxLines: null,
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
                onTap: () {},
                child: Image(
                  image: isTextFiledFocus ? AssetImage('assets/images/icon/send_icon.png'): AssetImage('assets/images/icon/microphone_icon.png'),
                  fit: BoxFit.contain,
                  height: 40.0
                )
              ),
            )
          ]
        )
      ),
    );
  }
  
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
        title: Column(
            children: <Widget>[
              Text(widget.user.name, style: TextStyle(fontSize: 20, fontFamily: 'Proxima-Nova-Regular')),
              Text('online', style: TextStyle(fontSize: 12, fontFamily: 'Proxima-Nova-Regular')),
            ]
          ),
        // ),
        actions: <Widget>[
          MaterialButton(
            onPressed: (){},
            padding: EdgeInsets.only(right: 20.0),
            minWidth: 0,
            child: CircleAvatar(
              backgroundColor: Theme.Colors.purpleMain400,
              backgroundImage: AssetImage(widget.user.avtUrl)
            )
          )
        ],
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: ListView.builder(
                  reverse: true,
                  padding: EdgeInsets.only(top: 15.0),
                  itemCount: messages.length,
                  itemBuilder: (BuildContext context, int index) {
                    final Message message = messages[index];
                    final bool isMe = message.sender.id == currentUser.id;
                    return _buiderMessage(message, isMe);
                  }
                )
              ),
            ),
            _buildMessageComposer(),
          ]
        )
      ),
    );
  }
}
