import '../models/user_model.dart';
class Message {
  
  final User sender;
  final String time;
  final String text;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.unread,
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
  name: 'Steven Swap',
  avtUrl: 'assets/images/avt_Friend2.png',
);
final User steven4 = User(
  id: 4,
  name: 'Steven Swap',
  avtUrl: 'assets/images/avt_Friend2.png',
);
final User steven5 = User(
  id: 5,
  name: 'Steven Swap',
  avtUrl: 'assets/images/avt_Friend2.png',
);

final User steven6 = User(
  id: 6,
  name: 'Steven Swap',
  avtUrl: 'assets/images/avt_Friend2.png',
);


final User steven7 = User(
  id: 7,
  name: 'Steven Swap',
  avtUrl: 'assets/images/avt_Friend2.png',
);


//List in chatchat_page
List<Message> chats = [
  Message(
    sender: linda,
    time: '12:30 AM',
    text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum ... The first line of Lorem Ipsum',
  ),
   Message(
     sender: steven,
    time: '12:55 AM',
    text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
  ),
   Message(
     sender: steven3,
    time: '12:55 AM',
    text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
  ),
   Message(
     sender: steven4,
    time: '12:55 AM',
    text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
  ),
   Message(
     sender: steven5,
    time: '12:55 AM',
    text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
  ),
   Message(
     sender: steven6,
    time: '12:55 AM',
    text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
  ),
   Message(
     sender: steven7,
    time: '12:55 AM',
    text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
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
    text: 'Good idea',
  ),
   Message(
    sender: currentUser,
    text: 'Let us drink coffee together',
  ),
   Message(
    sender: currentUser,
    text: 'Awesome',
  ),
 Message(
    sender: linda,
    text: 'I\'m work as developer',
  ),
 Message(
    sender: linda,
    text: 'Yes',
  ),
  Message(
    sender: currentUser,
    text: 'I\'m fine, did you work?',
  ),
 Message(
    sender: linda,
    text: 'Hey, How are you?',
  ),
 Message(
    sender: linda,
    text: 'Hello:3',
  ),

];
