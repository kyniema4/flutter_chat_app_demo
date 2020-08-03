// import 'package:chat/chatContact/chatContactHeader.dart';
import 'package:flutter/material.dart';
// // import 'utils/theme.dart' as Theme;
import 'chatChat/chatChat.dart';
import 'chatChat/chatChatHeader.dart';
import 'chatContact/chatcontact.dart';
import 'chatContact/chatContactHeader.dart';
import 'chatCall/chatCall.dart';
import 'chatsetting.dart';
import 'utils/theme.dart' as Theme;

class TabsPage extends StatefulWidget {
  @override
  _TabsPage createState() => _TabsPage();
}

class _TabsPage extends State<TabsPage> {
  PageController _myPage = PageController(initialPage: 3);
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
            appBar: ChatContactHeader(),
            body: ChatContactPage(),
          ),
          Scaffold(
            appBar: ChatChatHeader(),
            body: ChatChatPage(),
          ),
          Container(
            child: ChatCall(),
          ),
          Container(
            child: ChatSettingPage(),
          )
        ],
        physics:
            NeverScrollableScrollPhysics(), // Comment this if you need to use Swipe.
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 55,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                iconSize: 28.0,
                // padding: EdgeInsets.only(left: 28.0),
                icon: Icon(Icons.perm_identity),
                color: Theme.Colors.blue293,
                onPressed: () {
                  setState(() {
                    _myPage.jumpToPage(0);
                    title = 'Contacts';
                  });
                },
              ),
              IconButton(
                icon: Icon(Icons.chat_bubble_outline),
                iconSize: 28.0,
                color: Theme.Colors.blue293,
                onPressed: () {
                  setState(() {
                    _myPage.jumpToPage(1);
                    title = 'Chats';
                  });
                },
              ),
              IconButton(
                icon: Icon(Icons.local_phone),
                iconSize: 28.0,
                color: Theme.Colors.blue293,
                onPressed: () {
                  setState(() {
                    _myPage.jumpToPage(2);
                  });
                },
              ),
              IconButton(
                icon: Icon(Icons.settings),
                iconSize: 28.0,
                color: Theme.Colors.blue293,
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
