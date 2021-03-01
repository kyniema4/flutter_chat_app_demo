import 'package:flutter_chat_app_demo/src/model/user_model.dart';

class ChatModel {
  final String roomId;
  final String sender;
  final String idSender;
  final String idReceive;
  final String content;
  final bool unRead;
  final bool isCheck;
  final DateTime time;

  ChatModel({
    this.roomId,
    this.idSender,
    this.idReceive,
    this.sender,
    this.content,
    this.unRead,
    this.isCheck,
    this.time,
  });
  factory ChatModel.fromJson(Map<String, dynamic> parsedJson) {
    return new ChatModel(
        //roomId: parsedJson['roomId']??"",
        roomId: parsedJson['roomId'] ?? "",
        idSender: parsedJson['idSender'] ?? "",
        idReceive: parsedJson['idReceive'] ?? "",
        sender: parsedJson['sender'] ?? "",
        content: parsedJson['content'] ?? "",
        unRead: parsedJson['unRead'] ?? false,
        isCheck: parsedJson['isCheck'] ?? false,
        time: DateTime.parse(
                parsedJson['createdAt'] ?? "2021-01-27T04:34:49.836Z") ??
            DateTime.now());
  }

  Map<String, dynamic> toJson() {
    return {
      'roomId': this.roomId,
      'sender': this.sender,
      'idSender': this.idSender,
      'idReceive': this.idReceive,
      'content': this.content,
      'unRead': this.unRead,
      'isCheck': this.isCheck,
      'time': this.time.millisecondsSinceEpoch,
    };
  }

  factory ChatModel.fromLocalDatabaseJson(Map<String, dynamic> parsedJson) {
    return new ChatModel(
        roomId: parsedJson['roomId'] ?? "",
        idSender: parsedJson['idSender'] ?? "",
        idReceive: parsedJson['idReceive'] ?? "",
        sender: parsedJson['sender'] ?? "",
        content: parsedJson['content'] ?? "",
        unRead: parsedJson['unRead'] ?? false,
        isCheck: parsedJson['isCheck'] ?? false,
        time: DateTime.parse(
                parsedJson['createdAt'] ?? "2021-01-27T04:34:49.836Z") ??
            DateTime.now());
  }

  Map<String, dynamic> toLocalDatabaseJson() {
    return {
      'roomId': this.roomId,
      'sender': this.sender,
      'idSender': this.idSender,
      'idReceive': this.idReceive,
      'content': this.content,
      'unRead': this.unRead,
      'isCheck': this.isCheck,
      'time': this.time.millisecondsSinceEpoch,
    };
  }
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
// List<ChatModel> chats = [
//   ChatModel(
//       sender: linda.toString(),
//       time: '12:10 AM',
//       text:
//           'Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been...',
//       isCheck: false),
//   ChatModel(
//       sender: steven.toString(),
//       time: '12:55 AM',
//       text:
//           'Lorem Ipsum is simply dummy text of the printing and typesetting...',
//       isCheck: false),
//   ChatModel(
//       sender: steven3.toString(),
//       time: '3:14 PM',
//       text:
//           'Lorem Ipsum is simply dummy text of the printing and typesetting...',
//       isCheck: true),
//   ChatModel(
//       sender: steven4.toString(),
//       time: '4:25 PM',
//       text:
//           'Lorem Ipsum is simply dummy text of the printing and typesetting...',
//       isCheck: false),
//   ChatModel(
//       sender: steven5.toString(),
//       time: '5:55 PM',
//       text:
//           'Lorem Ipsum is simply dummy text of the printing and typesetting...',
//       isCheck: false),
// ];

// //List in chatchat_detail page
// List<ChatModel> ChatModels = [
//   ChatModel(
//     sender: linda.toString(),
//     text: 'ok',
//   ),
//   ChatModel(
//     sender: linda.toString(),
//     text: 'good idea',
//   ),
//   ChatModel(
//     sender: currentUser.toString(),
//     text: 'let us drink coffee together ^_^',
//   ),
//   ChatModel(
//     sender: currentUser.toString(),
//     text: 'Awesome',
//   ),
//   ChatModel(
//     sender: linda.toString(),
//     text: 'I\'m work as designer',
//   ),
//   ChatModel(
//     sender: linda.toString(),
//     text: 'yes',
//   ),
//   ChatModel(
//     sender: currentUser.toString(),
//     text: 'I\'m fine, did you work?',
//   ),
//   ChatModel(
//     sender: linda.toString(),
//     text: 'Hay, How are you ? :)',
//   ),
// ];
