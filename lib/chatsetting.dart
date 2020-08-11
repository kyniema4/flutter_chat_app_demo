import 'package:chat/components/header.dart';
import 'package:flutter/material.dart';
import 'utils/theme.dart' as Theme;
import 'utils/style.dart';

class ChatSettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: AppBar(
              backgroundColor: Theme.Colors.purpleMain,
              elevation: 0,
              title: Center(
                child: Header('Settings'),
              )),
        ),
        body: Container(
          child: Column(children: <Widget>[
            Container(
              decoration: new BoxDecoration(color: Theme.Colors.purpleMain),
              height: height / 2 - 120,
              child: Center(
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 55,
                      backgroundImage:
                          AssetImage('assets/images/avt_chat_setting.png'),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 13, top: 25),
                      child: Text(
                        'Narla Chaw',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Proxima-Nova'),
                      ),
                    ),
                    Container(
                      child: Text(
                        '+61 896 98587625',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            fontFamily: 'Proxima-Nova-Regular'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 18.0,
              decoration: new BoxDecoration(
                color: Theme.Colors.greyede,
              ),
            ),
            Container(
              height: (height / 2) - 100,
              padding: EdgeInsets.only(left: 30),
              decoration: new BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: new BoxDecoration(
                      border: Border(
                        bottom: borderList,
                      ),
                    ),
                    child: ListTile(
                      contentPadding: EdgeInsets.only(left: 0.0, right: 20),
                      title: Text(
                        'Set Profile Photo',
                        style: textTitleSetting,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Theme.Colors.grey9cd,
                      ),
                      // EdgeInsets.symmetric(horizontal: 16.0),
                    ),
                  ),
                  Container(
                    decoration: new BoxDecoration(
                      border: Border(
                        bottom: borderList,
                      ),
                    ),
                    child: ListTile(
                      contentPadding: EdgeInsets.only(left: 0.0, right: 20),
                      title: Text(
                        'Privacy and Security',
                        style: textTitleSetting,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Theme.Colors.grey9cd,
                      ),
                    ),
                  ),
                  Container(
                    decoration: new BoxDecoration(
                      border: Border(bottom: borderList),
                    ),
                    child: ListTile(
                      contentPadding: EdgeInsets.only(left: 0.0, right: 20),
                      title: Text(
                        'Data and Storage',
                        style: textTitleSetting,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Theme.Colors.grey9cd,
                      ),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.only(left: 0.0, right: 20),
                    title: Text(
                      'Notifications',
                      style: textTitleSetting,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Theme.Colors.grey9cd,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 18.0,
              decoration: new BoxDecoration(
                color: Theme.Colors.greyede,
              ),
            ),
          ]),
        ),
        bottomNavigationBar: BottomAppBar(
            child: Container(
          height: 45,
          width: width,
          child: RaisedButton(
            color: Colors.white,
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
