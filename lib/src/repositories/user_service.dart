import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_app_demo/src/model/user_model.dart';
import 'package:flutter_chat_app_demo/src/repositories/base_url.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserService {
  final baseUrl = BaseUrl;
  Dio dio = Dio();

  Future<UserModel>getInfo() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    Map json = jsonDecode(pref.getString('userData'));
    var user = UserModel.fromJson(json);
    return user;
  }

  Future<List<UserModel>>getContacts() async {
      try {
        UserModel user =await getInfo();
        Response response = await dio.post(
          '$baseUrl/getcontacts',
          data: {"id": user.id},
        );
       
        if (response.data['success']) {
          final resData = response.data['data'] as List;
          final List<UserModel> contacts = resData.map((item) {
            return UserModel.fromJson(item);
          }).toList();
          return contacts;
        } else {
          throw Exception('Failed to load contacts');
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
}
