import 'package:flutter/material.dart';
import 'components/header.dart';
import 'components/search.dart';
import 'utils/theme.dart' as Theme;
import 'models/contact_model.dart';
import 'utils/style.dart';

class ChatContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.Colors.purpleMain,
        automaticallyImplyLeading: false,
        title: Container(
          child: Header('Contact'),
        ),
        centerTitle: true,
        actions: <Widget>[
          Container(
            // decoration: new BoxDecoration(color: Colors.red),
            margin: EdgeInsets.only(right: 22),
            child: InkWell(
                onTap: () {},
                child: Image(
                  image: AssetImage(
                    'assets/images/icon/icon_add.png',
                  ),
                  // fit: BoxFit.contain,
                  height: 23,
                  width: 23,
                )),
          )
        ],
      ),
      body: Container(
        child: ListView(
          children: [
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
              margin: new EdgeInsets.symmetric(vertical: 5.0, horizontal: 0),
              // decoration: BoxDecoration(
              //   color: Colors.pink,
              // ),
              height: 50,
              child: ListTile(
                  contentPadding: EdgeInsets.only(left: 0.0, right: 0.0),
                  title: Row(
                    children: [
                      // Expanded(
                      //   flex: 1,
                      // child:
                      Container(
                        height: 40,
                        width: 80,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Theme.Colors.purpleMain,
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                      // ),
                      // Expanded(
                      //   flex: 13,
                      // child:
                      Container(
                        width: width - 90,
                        height: 50,
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: borderList,
                          ),
                        ),
                        child: Flex(
                          direction: Axis.vertical,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Invite Friend',
                                style: TextStyle(
                                    color: Theme.Colors.purpleMain,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Proxima-Nova')),
                          ],
                        ),
                      ),
                      // ),
                    ],
                  )),
            ),
            Container(
              child: Column(children: <Widget>[
                for (var contact in contacts)
                  Container(
                    // color: Colors.pink,
                    margin: new EdgeInsets.symmetric(vertical: 5.0),
                    height: 70,
                    child: ListTile(
                        contentPadding: EdgeInsets.only(left: 0.0, right: 0.0),
                        title: Row(
                          children: [
                            // Expanded(
                            //   flex: 1,
                            // child:
                            Container(
                              width: 90,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                              ),
                              child: Container(
                                  child: CircleAvatar(
                                      radius: (30),
                                      backgroundColor: Colors.white,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(30),
                                        child: Image.asset(contact.avtUrl),
                                      ))),
                            ),
                            // ),
                            // Expanded(
                            //   flex: 4,
                            //   child:
                            Container(
                              width: width - 90,
                              margin: EdgeInsets.only(left: 0),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: borderList,
                                ),
                              ),
                              child: Flex(
                                direction: Axis.vertical,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(contact.name,
                                      style: TextStyle(
                                          color: Theme.Colors.grey666,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Proxima-Nova')),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(contact.phone,
                                      style: TextStyle(
                                          color: Theme.Colors.grey666,
                                          fontSize: 14.0,
                                          fontFamily: 'Proxima-Nova-Regular')),
                                ],
                              ),
                            ),
                            // ),
                          ],
                        )),
                  )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
