import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_app_demo/src/model/user_model.dart';
import 'package:flutter_chat_app_demo/src/repositories/base_url.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  final baseUrl = BaseUrl;

  Dio dio = Dio();
  login(email, password) async {
    
    try {
      return await dio.post('$baseUrl/authenticate',
          data: {"email": "tom0@gmail.com", "password": 159753},
          options: Options(contentType: Headers.formUrlEncodedContentType));
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

  register(email, password) async {
    try {
      return await dio.post(
        '$baseUrl/adduser',
        data: {"email": email, "password": password},
        // options: Options(contentType: Headers.formUrlEncodedContentType)
      );
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

  setInfo(data) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    //Map<String, dynamic> json = jsonDecode(objText);
    String user=jsonEncode(UserModel.fromJson(data));
    pref.setString('userData', user);
  }

  getInfo() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    Map json = jsonDecode(pref.getString('userData'));
    var user = UserModel.fromJson(json);
   return json;
  }

  setToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('token', "$token");
  }

  getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return String
    String token = prefs.getString('token');
    return token;
  }

  removeToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Remove String
    await prefs.clear();
  }

  getContacts(id) async {
    try {
      return await dio.post('$baseUrl/getcontacts',
          data: {"id": id},
          options: Options(contentType: Headers.formUrlEncodedContentType));
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

// class User {
//   final String id;
//   final String userName;
//   final int number;

//   User({this.id, this.userName, this.number});

//   factory User.fromJson(Map<String, dynamic> parsedJson) {
//     return new User(
//         id: parsedJson['id'] ?? "",
//         userName: parsedJson['userName'] ?? "",
//         number: parsedJson['number'] ?? "");
//   }

//   Map<String, dynamic> toJson() {
//     return {"id": this.id, "userName": this.userName, "number": this.number};
//   }
// }
