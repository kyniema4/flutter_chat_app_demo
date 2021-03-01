import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_app_demo/src/model/chat_model.dart';
import 'package:flutter_chat_app_demo/src/model/message_model.dart';
import 'package:flutter_chat_app_demo/src/model/user_model.dart';
import 'package:flutter_chat_app_demo/src/repositories/base_url.dart';
import 'package:flutter_chat_app_demo/src/repositories/repository.dart';
import 'package:fluttertoast/fluttertoast.dart';
final _respository = new Repository();

class ChatServices {
  final baseUrl = BaseUrl;
  
  Dio dio = Dio();
  sendChat(text, id, roomId) async {
    try {
      UserModel user = await _respository.getUserInfo();
      if (user.id.isEmpty) {
        return;
      } else {
        return await dio.post('$baseUrl/sendchat', data: {
          "idSender": user.id,
          "idReceive": id,
          "content": text,
          "sender": user.userName,
          "roomId": roomId ?? "",
        });
      }
    } on DioError catch (e) {
      Fluttertoast.showToast(
          msg: e.response.data['msg'],
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }

  Future<List<ChatModel>> getListChat(data) async {
    try {
      Response response;
      UserModel user = await _respository.getUserInfo();

      response = await dio.post('$baseUrl/getmessage', data: {
        "idSender": user.id,
        "idReceive": data['idReceive'] ?? "",
        "roomId": data['roomId'] ?? "",
        "limit":data['limit']??10,
        "pageIndex":data['pageIndex']??0
      });
      if (response.data['success']) {
        final resData = response.data['data']['listChat'] as List;
        final resRoomId = response.data['data']['roomId'];
        
        if (resData.isEmpty) {
          resData.add({
            'roomId':resRoomId,
            'createdAt': '2021-01-27T04:34:49.836Z',
            });
           List<dynamic> newList=resData;  
          final List<ChatModel> listChat = newList.map((item) {
            return ChatModel.fromJson(item);
          }).toList();
          print(listChat.length);
          return listChat;
          
        } else {
          print(resData[0]);
          print(resData[0].runtimeType);
          final List<ChatModel> listChat = resData.map((item) {
            return ChatModel.fromJson(item);
          }).toList();
          return listChat;
        }
      } else {
        throw Exception('Failed to load list chat');
      }
    } catch (e) {
      print(e);
    }
  }
}
