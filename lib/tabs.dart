import 'package:flutter/material.dart';
import 'chatChat/chatChat.dart';
// import 'chatChat/chatChatHeader.dart';
// import 'chatChat/headerTest.dart';

import 'chatcontact.dart';
import 'chatCall.dart';
import 'chatsetting.dart';

import 'utils/theme.dart' as Theme;

class TabsPage extends StatefulWidget {
  @override
  _TabsPage createState() => _TabsPage();
}

class _TabsPage extends State<TabsPage> {
  PageController _myPage = PageController(initialPage: 0);

  // Color _iconColor0 = Theme.Colors.purpleMain;
  // Color _iconColor1 = Theme.Colors.blue293;
  // Color _iconColor2 = Theme.Colors.blue293;
  // Color _iconColor3 = Theme.Colors.blue293;

  AssetImage _image0 = AssetImage('assets/images/icon/user_activetab.png');
  AssetImage _image1 = AssetImage('assets/images/icon/chat_tab.png');
  AssetImage _image2 = AssetImage('assets/images/icon/phone_tab.png');
  AssetImage _image3 = AssetImage('assets/images/icon/setting_tab.png');

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width - 20;
    return Scaffold(
      body: PageView(
        controller: _myPage,
        children: <Widget>[
          Scaffold(
            // appBar: HeaderTest(title: 'Contact', appBar: AppBar(),iconButton: Icons.add, isLeftButton: false),
            body: ChatContactPage(),
          ),
          Container(
            // appBar: ChatChatHeader(),
            // appBar: HeaderTest(title: 'Chats',appBar: AppBar(), iconButton: Icons.create, isLeftButton: true),
            child: ChatChatPage(),
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
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: width / 4,
                // color: Colors.red,
                child: MaterialButton(
                  minWidth: 50,
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: Image(image: _image0, width: 28, fit: BoxFit.contain),
                  onPressed: () {
                    _image0 =
                        AssetImage('assets/images/icon/user_activetab.png');
                    _image1 = AssetImage('assets/images/icon/chat_tab.png');
                    _image2 = AssetImage('assets/images/icon/phone_tab.png');
                    _image3 = AssetImage('assets/images/icon/setting_tab.png');

                    setState(() {
                      _myPage.jumpToPage(0);
                      // title = 'Contacts';
                    });
                  },
                ),
              ),
              Container(
                width: width / 4,
                // color: Colors.red,
                child: MaterialButton(
                  minWidth: 50,
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: Image(image: _image1, width: 28, fit: BoxFit.contain),
                  onPressed: () {
                    _image0 = AssetImage('assets/images/icon/user_tab.png');
                    _image1 =
                        AssetImage('assets/images/icon/chat_activetab.png');
                    _image2 = AssetImage('assets/images/icon/phone_tab.png');
                    _image3 = AssetImage('assets/images/icon/setting_tab.png');

                    setState(() {
                      _myPage.jumpToPage(1);
                      // title = 'Contacts';
                    });
                  },
                ),
              ),
              Container(
                // color: Colors.red,
                width: width / 4,
                child: MaterialButton(
                  minWidth: 50,
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: Image(image: _image2, width: 28, fit: BoxFit.contain),
                  onPressed: () {
                    _image0 = AssetImage('assets/images/icon/user_tab.png');
                    _image1 = AssetImage('assets/images/icon/chat_tab.png');
                    _image2 =
                        AssetImage('assets/images/icon/phone_activetab.png');
                    _image3 = AssetImage('assets/images/icon/setting_tab.png');

                    setState(() {
                      _myPage.jumpToPage(2);
                      // title = 'Contacts';
                    });
                  },
                ),
              ),
              Container(
                // color: Colors.red,
                width: width / 4,
                child: MaterialButton(
                  minWidth: 50,
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: Image(image: _image3, width: 28, fit: BoxFit.contain),
                  onPressed: () {
                    _image0 = AssetImage('assets/images/icon/user_tab.png');
                    _image1 = AssetImage('assets/images/icon/chat_tab.png');
                    _image2 = AssetImage('assets/images/icon/phone_tab.png');
                    _image3 =
                        AssetImage('assets/images/icon/setting_activetab.png');

                    setState(() {
                      _myPage.jumpToPage(3);
                      // title = 'Contacts';
                    });
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
