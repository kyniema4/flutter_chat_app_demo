import 'package:flutter/material.dart';
import 'utils/theme.dart' as Theme;
class User {
  final int id;
  final String name;
  final String avtUrl;

  User({
    this.id,
    this.name,
    this.avtUrl
  });
}
class Message {
  final User sender;
  final String time;
  final String text;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.unread,
  });
}
final User currentUser = User(
  id: 0,
  name: 'Current User',
  avtUrl: 'assets/images/avt_chat_setting.png',
);
final User linda = User(
  id: 1,
  name: 'Linda Natasha',
  avtUrl: 'assets/images/avt_Friend.png',
);
List<Message> messages = [
  Message(
    sender: linda,
    text: 'ok',
  ),
   Message(
    sender: linda,
    text: 'Good idea',
  ),
   Message(
    sender: currentUser,
    text: 'Let us drink coffee together',
  ),
   Message(
    sender: currentUser,
    text: 'Awesome',
  ),
 Message(
    sender: linda,
    text: 'I\'m work as developer',
  ),
 Message(
    sender: linda,
    text: 'Yes',
  ),
  Message(
    sender: currentUser,
    text: 'I\'m fine, did you work?',
  ),
 Message(
    sender: linda,
    text: 'Hey, How are you?',
  ),
 Message(
    sender: linda,
    text: 'Hello:3',
  ),
];

class ChatChatDetail extends StatefulWidget {
  @override
  _ChatChatDetailState createState() => _ChatChatDetailState();
}

class _ChatChatDetailState extends State<ChatChatDetail> {
  _buiderMessage(Message message, bool isMe) {
    final Container msg = Container(
      margin: isMe ? EdgeInsets.only(top: 8.0, bottom: 8.0, left: 80.0)
                    : EdgeInsets.only(top: 8.0, bottom: 8.0),
      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
      // width: MediaQuery.of(context).size.width * 0.75,
      decoration: new BoxDecoration(
        color: isMe ? Theme.Colors.purpleMain : Colors.white,
        borderRadius: isMe  ? 
              BorderRadius.only(
                topLeft: Radius.circular(15.0),
                bottomLeft: Radius.circular(15.0),
              ) 
            : BorderRadius.only(
                topRight: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
              ),
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
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      height: 60,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          MaterialButton(
            child: Icon(Icons.camera_alt,size: 25.0, color: Theme.Colors.grey300),
            onPressed: () {},
          ),
           MaterialButton(
            child: Icon(Icons.attach_file, size: 25.0, color: Theme.Colors.grey300),
            onPressed: () {},
          ),
          Expanded(
            child: TextField(
              textCapitalization: TextCapitalization.sentences,
              onChanged: (value) {},
              decoration: InputDecoration.collapsed(hintText: 'Type message...')
            )
          ),
           MaterialButton(
            child: Icon(Icons.send, size: 25.0, color: Theme.Colors.grey300),
            onPressed: () {},
          ),
        ]
      )
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.Colors.purpleMain100,
        appBar: AppBar(
          backgroundColor: Theme.Colors.purpleMain,
          automaticallyImplyLeading: false,
          leading: MaterialButton(
            padding: EdgeInsets.only(left: 10.0),
            child: Icon(Icons.arrow_back_ios, color: Colors.white, size: 26.0),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: Center(
            // alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Text('Linda Natasha', style: TextStyle(fontSize: 20, fontFamily: 'Proxima-Nova-Regular')),
                Text('online', style: TextStyle(fontSize: 12, fontFamily: 'Proxima-Nova-Regular')),
              ]
            ),
          ),
          // ),
          actions: <Widget>[
            MaterialButton(
              onPressed: (){},
              padding: EdgeInsets.only(right: 20.0),
              minWidth: 0,
              child: CircleAvatar(
                backgroundColor: Theme.Colors.purpleMain400,
                backgroundImage: NetworkImage('https://kenh14cdn.com/thumb_w/640/2018/8/26/photo1535258639462-1535258639462886930077.png'),
                // backgroundImage: AssetImage('assets/images/avt_Friend.png')
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
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
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
                  )
                ),
              ),
              _buildMessageComposer(),
            ]
          )
        ),
        // children: []
        // bottomNavigationBar: BottomAppBar(
        //   child: Container(
        //     child: Row(
        //       children: <Widget>[
        //         Expanded(
        //           child: IconButton(
        //             icon: Icon(Icons.camera_alt),
        //             onPressed: () {},
        //           ),
        //         ),
        //         Expanded(
        //           child: IconButton(
        //             icon: Icon(Icons.attach_file),
        //             onPressed: () {},
        //           ),
        //         ),
        //         Expanded(
        //           child: TextFormField(
        //             decoration: const InputDecoration(
        //               hintText: 'What do people call you?',
        //             ),
        //           ),
        //         ),
        //         Expanded(
        //           child: Ink(
        //             decoration: const ShapeDecoration(
        //               color: Colors.lightBlue,
        //               shape: CircleBorder(),
        //             ),
        //             child: IconButton(
        //               icon: Icon(Icons.send),
        //               color: Colors.white,
        //               onPressed: () {},
        //             ),
        //           ),
        //         )
        //       ],
        //     ),
        //   ),
        // )
        );
  }
}
