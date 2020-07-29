import 'package:chat/chatChat/chatContent.dart';
import 'package:flutter/material.dart';

// import 'utils/theme.dart' as Theme;
// import 'components/header.dart';
// import 'components/footer.dart';
import 'chatContent.dart';

class ChatChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              // onChanged: (value) {
              //   filterSearchResults(value);
              // },
              // controller: editingController,
              decoration: InputDecoration(
                  // labelText: "Search",
                  hintText: "Search for message or users",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)))),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          ChatContentPage(),
        ],
      ),
    );
  }
}
