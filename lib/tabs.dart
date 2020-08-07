import 'package:flutter/material.dart';
import 'chatChat/chatChat.dart';
import 'chatChat/chatChatHeader.dart';
import 'chatContact/chatcontact.dart';
import 'chatCall/chatCall.dart';
import 'chatsetting.dart';
import 'utils/theme.dart' as Theme;

class TabsPage extends StatefulWidget {
  @override
  _TabsPage createState() => _TabsPage();
}

class _TabsPage extends State<TabsPage> {
  PageController _myPage = PageController(initialPage: 0);
  String title;
  Color _iconColor0 = Theme.Colors.purpleMain;
  Color _iconColor1 = Theme.Colors.blue293;
  Color _iconColor2 = Theme.Colors.blue293;
  Color _iconColor3 = Theme.Colors.blue293;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _myPage,
        children: <Widget>[
          ChatContactPage(),
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
            children: [
              IconButton(
                iconSize: 28.0,
                icon: Icon(Icons.perm_identity),
                color: _iconColor0,
                onPressed: () {
                  _iconColor0 = Theme.Colors.purpleMain;
                  _iconColor1 = Theme.Colors.blue293;
                  _iconColor2 = Theme.Colors.blue293;
                  _iconColor3 = Theme.Colors.blue293;

                  setState(() {
                    _myPage.jumpToPage(0);
                    title = 'Contacts';
                  });
                },
              ),
              IconButton(
                icon: Icon(Icons.chat_bubble_outline),
                iconSize: 28.0,
                color: _iconColor1,
                onPressed: () {
                  _iconColor1 = Theme.Colors.purpleMain;
                  _iconColor0 = Theme.Colors.blue293;
                  _iconColor2 = Theme.Colors.blue293;
                  _iconColor3 = Theme.Colors.blue293;
                  setState(() {
                    _myPage.jumpToPage(1);
                    title = 'Chats';
                  });
                },
              ),
              IconButton(
                icon: Icon(Icons.local_phone),
                iconSize: 28.0,
                color: _iconColor2,
                onPressed: () {
                  setState(() {
                    _myPage.jumpToPage(2);
                    _iconColor2 = Theme.Colors.purpleMain;
                    _iconColor0 = Theme.Colors.blue293;
                    _iconColor1 = Theme.Colors.blue293;
                    _iconColor3 = Theme.Colors.blue293;
                  });
                },
              ),
              IconButton(
                icon: Icon(Icons.settings),
                iconSize: 28.0,
                color: _iconColor3,
                onPressed: () {
                  setState(() {
                    _myPage.jumpToPage(3);
                    _iconColor3 = Theme.Colors.purpleMain;
                    _iconColor0 = Theme.Colors.blue293;
                    _iconColor1 = Theme.Colors.blue293;
                    _iconColor2 = Theme.Colors.blue293;
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
