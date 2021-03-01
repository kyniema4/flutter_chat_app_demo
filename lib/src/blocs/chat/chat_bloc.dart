import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter_chat_app_demo/src/model/chat_model.dart';
import 'package:flutter_chat_app_demo/src/providers/provider.dart';
import 'package:flutter_chat_app_demo/src/repositories/repository.dart';
import 'package:rxdart/rxdart.dart';

class ChatBloc implements BlocBase {
  final _respository = new Repository();
  //create stream controller
  // final _chatFetcher = BehaviorSubject<List<ChatModel>>();
  // final _socketListChat = BehaviorSubject<List<ChatModel>>();
  List<ChatModel> saveListChat;
  PublishSubject<List<ChatModel>> _chatFetcher;
  PublishSubject<List<ChatModel>> _socketListChat;

  ChatBloc() {
    saveListChat = [];
    _chatFetcher = PublishSubject<List<ChatModel>>();
    _socketListChat = PublishSubject<List<ChatModel>>();
  }

  Function(List<ChatModel>) get addListChat => _chatFetcher.sink.add;
  Function(List<ChatModel>) get addSocketListChat => _socketListChat.sink.add;


 
  // Stream<List<ChatModel>> get concatStream => Rx.concat([listChat,listChat]);

  Stream<List<ChatModel>> get listChat => _chatFetcher.stream;
  Stream<List<ChatModel>> get listSocketChat => _socketListChat.stream;

  

  Future fetchInitialListChat(idReceive, roomId) async {
    print("call list initial");
    Map<String, dynamic> data = {
      'idReceive': idReceive,
      'roomId': roomId,
    };
    var fetchListChat = await _respository.fetchListChat(data);
    saveListChat = [...fetchListChat];
    addListChat(saveListChat);
    return fetchListChat;
  }

  Future fetchScrollListChat(roomId, int limit, int pageIndex) async {
    try {
      Map<String, dynamic> data = {
        'roomId': roomId,
        'limit': limit,
        'pageIndex': pageIndex,
      };
      var fetchScrollListChat = await _respository.fetchListChat(data);
      if (fetchScrollListChat.length != 0) {
        saveListChat = [...saveListChat, ...fetchScrollListChat];

        addListChat(saveListChat);
      }
      ;
    } on SocketException {
      _chatFetcher.sink.addError(SocketException("No Internet Connection"));
    } catch (e) {
      print(e.toString());
      _chatFetcher.sink.addError(e);
    }
  }

  

  Future addMessageListChat(data) async {
    // List<ChatModel> listSocket = [];
    final message = await ChatModel.fromJson(data);
    // listSocket.add(message);
    // addSocketListChat(listSocket);
    print(message.content);
  }
  
  // Future addMessageListChat(data) async {

  //   List<ChatModel> listSocket = [];
  //   final message =await ChatModel.fromJson(data);
  //   listSocket.add(message);
  //   print(listSocket);
  //   print('debugging');
  //  // addListChat(saveListChat);
  // }
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
    _socketListChat.close();
    print("call dispose blocChat");
  }
}

// final blocChat = ChatBloc();
