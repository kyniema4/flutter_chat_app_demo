import 'package:flutter/material.dart';
import 'components/header.dart';
import 'components/search.dart';
import 'utils/theme.dart' as Theme;

class ChatContactPage extends StatelessWidget {
  @override
  Widget ContentContact() {
    return Container(
      child: Column(children: <Widget>[
        Container(
          margin: new EdgeInsets.symmetric(vertical: 5.0),
          height: 70,
          child: ListTile(
              title: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                    ),
                    child: Container(
                        child: CircleAvatar(
                            radius: (30),
                            backgroundColor: Colors.white,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child:
                                  Image.asset("assets/images/contact_avt1.png"),
                            ))),
                  )),
              Expanded(
                flex: 4,
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1, color: Theme.Colors.grey666),
                    ),
                  ),
                  child: Flex(
                    direction: Axis.vertical,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Arla Waing',
                          style: TextStyle(
                              color: Theme.Colors.grey666,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Proxima-Nova')),
                      SizedBox(
                        height: 5,
                      ),
                      Text('+61 854 97136521',
                          style: TextStyle(
                              color: Theme.Colors.grey666,
                              fontSize: 14.0,
                              fontFamily: 'Proxima-Nova-Regular')),
                    ],
                  ),
                ),
              ),
            ],
          )),
        ),
        Container(
          margin: new EdgeInsets.symmetric(vertical: 5.0),
          height: 70,
          child: ListTile(
              title: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                    ),
                    child: Container(
                        child: CircleAvatar(
                            radius: (30),
                            backgroundColor: Colors.white,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child:
                                  Image.asset("assets/images/contact_avt2.png"),
                            ))),
                  )),
              Expanded(
                flex: 4,
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1, color: Theme.Colors.grey666),
                    ),
                  ),
                  child: Flex(
                    direction: Axis.vertical,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Alexander',
                          style: TextStyle(
                              color: Theme.Colors.grey666,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Proxima-Nova')),
                      SizedBox(
                        height: 5,
                      ),
                      Text('+61 822 63698795',
                          style: TextStyle(
                              color: Theme.Colors.grey666,
                              fontSize: 14.0,
                              fontFamily: 'Proxima-Nova-Regular')),
                    ],
                  ),
                ),
              ),
            ],
          )),
        ),
        Container(
          margin: new EdgeInsets.symmetric(vertical: 5.0),
          height: 70,
          child: ListTile(
              title: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                    ),
                    child: Container(
                        child: CircleAvatar(
                            radius: (30),
                            backgroundColor: Colors.white,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child:
                                  Image.asset("assets/images/contact_avt3.png"),
                            ))),
                  )),
              Expanded(
                flex: 4,
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1, color: Theme.Colors.grey666),
                    ),
                  ),
                  child: Flex(
                    direction: Axis.vertical,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Carza Heldan',
                          style: TextStyle(
                              color: Theme.Colors.grey666,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Proxima-Nova')),
                      SizedBox(
                        height: 5,
                      ),
                      Text('+61 857 15993422',
                          style: TextStyle(
                              color: Theme.Colors.grey666,
                              fontSize: 14.0,
                              fontFamily: 'Proxima-Nova-Regular')),
                    ],
                  ),
                ),
              ),
            ],
          )),
        ),
        Container(
          margin: new EdgeInsets.symmetric(vertical: 5.0),
          height: 70,
          child: ListTile(
              title: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                    ),
                    child: Container(
                        child: CircleAvatar(
                            radius: (30),
                            backgroundColor: Colors.white,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child:
                                  Image.asset("assets/images/contact_avt4.png"),
                            ))),
                  )),
              Expanded(
                flex: 4,
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1, color: Theme.Colors.grey666),
                    ),
                  ),
                  child: Flex(
                    direction: Axis.vertical,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Steven Swap',
                          style: TextStyle(
                              color: Theme.Colors.grey666,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Proxima-Nova')),
                      SizedBox(
                        height: 5,
                      ),
                      Text('+61 857 15993422',
                          style: TextStyle(
                              color: Theme.Colors.grey666,
                              fontSize: 14.0,
                              fontFamily: 'Proxima-Nova-Regular')),
                    ],
                  ),
                ),
              ),
            ],
          )),
        ),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
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
              margin: new EdgeInsets.symmetric(vertical: 5.0),
              // decoration: BoxDecoration(
              //   color: Colors.pink,
              // ),
              height: 50,
              child: ListTile(
                  title: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 40,
                      width: 40,
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
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      height: 50,
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom:
                              BorderSide(width: 1, color: Theme.Colors.grey666),
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
                  ),
                ],
              )),
            ),
            ContentContact(),
          ],
        ),
      ),
    );
  }
}
