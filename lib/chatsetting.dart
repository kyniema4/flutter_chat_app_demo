import 'package:chat/components/header.dart';
import 'package:flutter/material.dart';
import 'utils/theme.dart' as Theme;

class ChatSettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: AppBar(
              backgroundColor: Theme.Colors.purpleMain,
              elevation: 0,
              title: Header('Settings')),
        ),
        body: Container(
          child: Column(children: <Widget>[
            Container(
              decoration: new BoxDecoration(color: Theme.Colors.purpleMain),
              height: height / 2 - 100,
              child: Center(
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 55,
                      backgroundImage:
                          AssetImage('assets/images/avt_chat_setting.png'),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 8, top: 18),
                      child: Text(
                        'Narla Chaw',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Proxima-Nova'),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 20, top: 0),
                      child: Text(
                        '+61 896 98587625',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13.0,
                            fontFamily: 'Proxima-Nova'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 17.0,
              decoration: new BoxDecoration(
                color: Theme.Colors.greyede,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 30),
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: new BoxDecoration(
                      border: Border(
                        bottom:
                            BorderSide(width: 1, color: Theme.Colors.grey666),
                      ),
                    ),
                    child: ListTile(
                      title: Text('Set Profile Photo',
                          style: TextStyle(
                            fontSize: 17,
                            color: Theme.Colors.grey666,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Proxima-Nova',
                          )),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Theme.Colors.grey9cd,
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text('Privacy and Security',
                        style: TextStyle(
                          fontSize: 17,
                          color: Theme.Colors.grey666,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Proxima-Nova',
                        )),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Theme.Colors.grey9cd,
                    ),
                  ),
                  ListTile(
                    title: Text('Data and Storage',
                        style: TextStyle(
                          fontSize: 17,
                          color: Theme.Colors.grey666,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Proxima-Nova',
                        )),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Theme.Colors.grey9cd,
                    ),
                  ),
                  ListTile(
                    title: Text('Notifications',
                        style: TextStyle(
                          fontSize: 17,
                          color: Theme.Colors.grey666,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Proxima-Nova',
                        )),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Theme.Colors.grey9cd,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: new BoxDecoration(
                color: Theme.Colors.greyede,
              ),
            ),
          ]),
        ),
        bottomNavigationBar: BottomAppBar(
            child: Container(
          height: 60.0,
          width: width,
          child: RaisedButton(
            // color: Colors.pink,
            splashColor: Theme.Colors.greyede,
            elevation: 0,
            onPressed: () {},
            child: const Text('Log Out',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Proxima-Nova',
                  color: Theme.Colors.red63b,
                )),
          ),
        )));
  }
}
