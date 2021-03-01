import 'dart:async';

import 'package:flutter_chat_app_demo/src/model/chat_model.dart';
import 'package:flutter_chat_app_demo/src/model/user_model.dart';
import 'package:flutter_chat_app_demo/src/repositories/chat_service.dart';
import 'package:flutter_chat_app_demo/src/repositories/user_service.dart';

class Repository {
  final userService = new UserService();
  final chatService = new ChatServices();

  Future<UserModel> getUserInfo() => userService.getInfo();
  Future<List<UserModel>> fetchAllUsers() => userService.getContacts();
  Future<List<ChatModel>> fetchListChat(data) => chatService.getListChat(data);
}
