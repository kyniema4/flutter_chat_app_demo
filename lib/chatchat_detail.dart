import 'package:flutter/material.dart';

class ChatChatDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text: 'fdefseg',
                style: TextStyle(fontSize: 20),
                children: <TextSpan>[
                  TextSpan(
                    text: '\nTrip List',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ]),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(children: <Widget>[
                Image.asset(
                  'assets/images/avt_Friend.png',
                  height: 50.0,
                ),
              ]),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: IconButton(
                    icon: Icon(Icons.camera_alt),
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: Icon(Icons.attach_file),
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'What do people call you?',
                    ),
                  ),
                ),
                Expanded(
                  child: Ink(
                    decoration: const ShapeDecoration(
                      color: Colors.lightBlue,
                      shape: CircleBorder(),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.send),
                      color: Colors.white,
                      onPressed: () {},
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
