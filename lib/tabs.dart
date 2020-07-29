import 'package:flutter/material.dart';
// import 'utils/theme.dart' as Theme;
// import 'components/header.dart';
import 'components/footer.dart';
import 'chatChat/chatChat.dart';
import 'chatChat/chatChatHeader.dart';

class TabsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ChatChatHeader(),
      body: ChatChatPage(),
      bottomNavigationBar: Footer(),
    );
  }
}
