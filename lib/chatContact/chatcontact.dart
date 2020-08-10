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
            Container(
              // decoration: new BoxDecoration(color: Colors.blue),
              padding: EdgeInsets.only(bottom: 15, top: 15),
              child: ListTile(
                  title: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 10),
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage:
                              AssetImage('assets/images/avt_chat_setting.png'),
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Narla Chaw',
                          style: TextStyle(
                              color: Theme.Colors.grey343,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Proxima-Nova')),
                      SizedBox(
                        height: 5,
                      ),
                      Text('+61 896 98587625',
                          style: TextStyle(
                              color: Theme.Colors.grey666,
                              fontSize: 14.0,
                              fontFamily: 'Proxima-Nova-Regular')),
                    ],
                  ),
                ],
              )),
            ),
            Container(
              decoration: new BoxDecoration(color: Theme.Colors.greyfef),
              padding: EdgeInsets.only(bottom: 12, top: 12, left: 15),
              child: Text('Contact',
                  style: TextStyle(
                      color: Theme.Colors.grey666,
                      fontSize: 17,
                      fontFamily: 'Proxima-Nova-Regular')),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Ink(
                      decoration: const ShapeDecoration(
                        color: Theme.Colors.purpleMain,
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
