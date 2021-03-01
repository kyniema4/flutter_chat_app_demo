import 'package:flutter_chat_app_demo/src/model/user_model.dart';

class Message {
  final UserModel sender;
  final String time;
  final String text;
  final bool unread;
  bool isCheck;

  Message({this.sender, this.time, this.text, this.unread, this.isCheck});
}

final UserModel currentUser = UserModel(
  id: "0",
  userName: 'Current UserModel',
  avatar: 'assets/images/avt_chat_setting.png',
);
final UserModel linda = UserModel(
  id: "1",
  userName: 'Linda Natasha',
  avatar: 'assets/images/avt_Friend.png',
);
final UserModel steven = UserModel(
  id: "2",
  userName: 'Steven Swap',
  avatar: 'assets/images/avt_Friend2.png',
);
final UserModel steven3 = UserModel(
  id: "3",
  userName: 'Carza Helden',
  avatar: 'assets/images/avt_Friend3.png',
);
final UserModel steven4 = UserModel(
  id: "4",
  userName: 'Richard Steve',
  avatar: 'assets/images/avt_Friend4.png',
);
final UserModel steven5 = UserModel(
  id: "5",
  userName: 'Natasha Chaw',
  avatar: 'assets/images/avt_Friend5.png',
);

//List in chatchat_page
List<Message> chats = [
  Message(
      sender: linda,
      time: '12:10 AM',
      text:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been...',
      isCheck: false),
  Message(
      sender: steven,
      time: '12:55 AM',
      text:
          'Lorem Ipsum is simply dummy text of the printing and typesetting...',
      isCheck: false),
  Message(
      sender: steven3,
      time: '3:14 PM',
      text:
          'Lorem Ipsum is simply dummy text of the printing and typesetting...',
      isCheck: true),
  Message(
      sender: steven4,
      time: '4:25 PM',
      text:
          'Lorem Ipsum is simply dummy text of the printing and typesetting...',
      isCheck: false),
  Message(
      sender: steven5,
      time: '5:55 PM',
      text:
          'Lorem Ipsum is simply dummy text of the printing and typesetting...',
      isCheck: false),
];

//List in chatchat_detail page
List<Message> messages = [
  Message(
    sender: linda,
    text: 'ok',
  ),
  Message(
    sender: linda,
    text: 'good idea',
  ),
  Message(
    sender: currentUser,
    text: 'let us drink coffee together ^_^',
  ),
  Message(
    sender: currentUser,
    text: 'Awesome',
  ),
  Message(
    sender: linda,
    text: 'I\'m work as designer',
  ),
  Message(
    sender: linda,
    text: 'yes',
  ),
  Message(
    sender: currentUser,
    text: 'I\'m fine, did you work?',
  ),
  Message(
    sender: linda,
    text: 'Hay, How are you ? :)',
  ),
];

