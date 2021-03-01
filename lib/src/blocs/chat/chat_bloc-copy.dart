import 'package:flutter/cupertino.dart';
import 'package:flutter_chat_app_demo/src/blocs/socket/socket_bloc.dart';
import 'package:flutter_chat_app_demo/src/model/chat_model.dart';
import 'package:flutter_chat_app_demo/src/providers/provider.dart';
import 'package:flutter_chat_app_demo/src/repositories/repository.dart';
import 'package:rxdart/rxdart.dart';


class ChatBloc implements BlocBase {

  final _respository = new Repository();
  final _chatFetcher = BehaviorSubject<List<ChatModel>>();

  
  Stream<List<ChatModel>> get listChat => _chatFetcher.stream;

  dynamic getListChat(idReceive, roomId) async {
    Map<String, dynamic> data = {'idReceive': idReceive, 'roomId': roomId};
    var fetchListChat = await _respository.fetchListChat(data);
    _chatFetcher.sink.add(fetchListChat);
    return fetchListChat;
  }

  dynamic addMessageListChat(data) async{   
    final message= ChatModel.fromJson(data);
    print(message.content);
     //_chatFetcher.sink.add(message));
  }

  dynamic joinRoom() async {
    listChat.listen((event) {
      if (event.isEmpty) {
        print("no have roomId");
      } else {
        return event[0].roomId;
      }
    });
  }

  void dispose() {
    _chatFetcher.close();
    print("call dispose blocChat");
  }
}

// final blocChat = ChatBloc();
