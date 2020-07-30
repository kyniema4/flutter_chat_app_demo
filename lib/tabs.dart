// import 'package:chat/chatContact/chatContactHeader.dart';
import 'package:flutter/material.dart';
// // import 'utils/theme.dart' as Theme;
import 'chatChat/chatChat.dart';
import 'chatChat/chatChatHeader.dart';
import 'chatContact/chatcontact.dart';
import 'chatContact/chatContactHeader.dart';
import 'chatCall/chatCall.dart';

class TabsPage extends StatefulWidget {
  @override
  _TabsPage createState() => _TabsPage();
}

class _TabsPage extends State<TabsPage> {
  PageController _myPage = PageController(initialPage: 0);
  String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _myPage,
        onPageChanged: (int) {
          print('Page Changes to index $int');
        },
        children: <Widget>[
          Scaffold(
            appBar: ChatChatHeader(),
            body: ChatContactPage(),
          ),
          Scaffold(
            appBar: ChatContactHeader(),
            body: ChatChatPage(),
          ),
          Container(
            child: ChatCall(),
          ),
          Center(
            child: Container(
              child: Text('Empty Body 3'),
            ),
          )
        ],
        physics:
            NeverScrollableScrollPhysics(), // Comment this if you need to use Swipe.
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 75,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                // iconSize: 30.0,
                // padding: EdgeInsets.only(left: 28.0),
                icon: Icon(Icons.person_outline),
                onPressed: () {
                  setState(() {
                    _myPage.jumpToPage(0);
                    title = 'Contacts';
                  });
                },
              ),
              IconButton(
                // iconSize: 30.0,
                // padding: EdgeInsets.only(right: 28.0),
                icon: Icon(Icons.chat_bubble_outline),
                onPressed: () {
                  setState(() {
                    _myPage.jumpToPage(1);
                    title = 'Chats';
                  });
                },
              ),
              IconButton(
                // iconSize: 30.0,
                // padding: EdgeInsets.only(left: 28.0),
                icon: Icon(Icons.local_phone),
                onPressed: () {
                  setState(() {
                    _myPage.jumpToPage(2);
                  });
                },
              ),
              IconButton(
                // iconSize: 30.0,
                // padding: EdgeInsets.only(right: 28.0),
                icon: Icon(Icons.settings),
                onPressed: () {
                  setState(() {
                    _myPage.jumpToPage(3);
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
