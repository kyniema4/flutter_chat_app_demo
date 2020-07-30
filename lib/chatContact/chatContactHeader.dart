import 'package:flutter/material.dart';
// import 'utils/theme.dart' as Theme;
import '../components/header.dart';

class ChatContactHeader extends AppBar {
  ChatContactHeader()
      : super(
          automaticallyImplyLeading: false,
          title: Header('Contact'),
          actions: <Widget>[
            Container(
              child: IconButton(
                icon: Icon(Icons.add),
                onPressed: () {},
              ),
            ),
          ],
        );
}
