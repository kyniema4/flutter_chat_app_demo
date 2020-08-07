import 'package:flutter/material.dart';
import '../components/header.dart';
import '../components/search.dart';
import '../utils/theme.dart' as Theme;

class ChatContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.Colors.purpleMain,
        automaticallyImplyLeading: false,
        title: Center(
            child: Container(
          padding: EdgeInsets.only(left: 45),
          child: Header('Contact'),
        )),
        actions: <Widget>[
          Container(
            child: IconButton(
              icon: Icon(Icons.add),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Search(),
            // SizedBox(
            //   height: 10.0,
            // ),
            Container(
              height: 100,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 50.0,
                  backgroundImage:
                      AssetImage('assets/images/avt_chat_setting.png'),
                ),
                title: Text('Two-line ListTile'),
                subtitle: Text('Here is a second line'),
              ),
            ),
            // SizedBox(
            //   height: 10.0,
            // ),
            ListTile(
              title: Text('Contact'),
              dense: true,
            ),
            Column(
              children: <Widget>[
                ListTile(
                  leading: Ink(
                    decoration: const ShapeDecoration(
                      color: Colors.lightBlue,
                      shape: CircleBorder(),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.add),
                      color: Colors.white,
                      onPressed: () {},
                    ),
                  ),
                  title: Text('Invite Friend'),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/avt_chat_setting.png'),
                  ),
                  title: Text('Two-line ListTile'),
                  subtitle: Text('Here is a second line'),
                ),
              ],
            )
            // ChatContentPage(),
          ],
        ),
      ),
    );
  }
}
