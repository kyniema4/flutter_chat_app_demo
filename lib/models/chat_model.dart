import '../models/user_model.dart';
class Message {
  
  final User sender;
  final String time;
  final String text;
  final bool unread;
  bool isCheck;

  Message({
    this.sender,
    this.time,
    this.text,
    this.unread,
    this.isCheck
  });
}

final User currentUser = User(
  id: 0,
  name: 'Current User',
  avtUrl: 'assets/images/avt_chat_setting.png',
);
final User linda = User(
  id: 1,
  name: 'Linda Natasha',
  avtUrl: 'assets/images/avt_Friend.png',
);
final User steven = User(
  id: 2,
  name: 'Steven Swap',
  avtUrl: 'assets/images/avt_Friend2.png',
);
final User steven3 = User(
  id: 3,
  name: 'Carza Helden',
  avtUrl: 'assets/images/avt_Friend3.png',
);
final User steven4 = User(
  id: 4,
  name: 'Richard Steve',
  avtUrl: 'assets/images/avt_Friend4.png',
);
final User steven5 = User(
  id: 5,
  name: 'Natasha Chaw',
  avtUrl: 'assets/images/avt_Friend5.png',
);

//List in chatchat_page
List<Message> chats = [
  Message(
    sender: linda,
    time: '12:10 AM',
    text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been...',
    isCheck: false
  ),
  Message(
    sender: steven,
    time: '12:55 AM',
    text: 'Lorem Ipsum is simply dummy text of the printing and typesetting...',
    isCheck: false
  ),
  Message(
     sender: steven3,
    time: '3:14 PM',
    text: 'Lorem Ipsum is simply dummy text of the printing and typesetting...',
    isCheck: false
  ),
  Message(
     sender: steven4,
    time: '4:25 PM',
    text: 'Lorem Ipsum is simply dummy text of the printing and typesetting...',
    isCheck: false
),
  Message(
    sender: steven5,
    time: '5:55 PM',
    text: 'Lorem Ipsum is simply dummy text of the printing and typesetting...',
    isCheck: false
  ),
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
