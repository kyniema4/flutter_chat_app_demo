import 'package:chat/chatChat/chatContent.dart';
import 'package:flutter/material.dart';

// import 'utils/theme.dart' as Theme;
// import 'components/header.dart';
// import 'components/footer.dart';
// import 'chatContent.dart';

class ChatContactPage extends StatelessWidget {
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
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)))),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/avt_chat_setting.png'),
            ),
            title: Text('Two-line ListTile'),
            subtitle: Text('Here is a second line'),
          ),
          SizedBox(
            height: 10.0,
          ),
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
    );
  }
}
