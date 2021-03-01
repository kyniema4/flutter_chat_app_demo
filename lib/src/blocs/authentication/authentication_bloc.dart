import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_chat_app_demo/src/mixins/validation_mixin.dart';
import 'package:flutter_chat_app_demo/src/model/user_model.dart';
import 'package:flutter_chat_app_demo/src/providers/provider.dart';
import 'package:flutter_chat_app_demo/src/repositories/auth_service.dart';
import 'package:rxdart/rxdart.dart';

class AuthenticationBloc with ValidationMixin implements BlocBase {
  final _email = new BehaviorSubject<String>();
  final _password = new BehaviorSubject<String>();
  final _errorMessage = new BehaviorSubject<String>();
  final _userInfo = BehaviorSubject<UserModel>();
  // getters: Changers
  Function(String) get changeEmail {
    addError(null);
    return _email.sink.add;
  }

  Function(String) get changePassword {
    addError(null);
    return _password.sink.add;
  }

  Function(String) get addError => _errorMessage.sink.add;
  // getters: Add stream
  Stream<String> get email => _email.stream.transform(validatorEmail);

  Stream<String> get password => _password.stream.transform(validatorPassword);
  Stream<String> get errorMessage => _errorMessage.stream;
  Stream<UserModel> get userInfo => _userInfo.stream;

  Stream<bool> get submitValidForm => Rx.combineLatest3(
        email,
        password,
        errorMessage,
        (e, p, er) => true,
      );

  // rgister
  dynamic register(BuildContext context) async {
    AuthService().register(_email.value, _password.value).then((val) {
      if (val.data['success']) {
        Navigator.pushNamed(context, '/login');
      } else {
        addError(val.data['msg']);
      }
    });
  }

  // login
  dynamic login(BuildContext context) async {
    AuthService().login(_email.value, _password.value).then((val) {
      if (val.data['success']) {
        String token = val.data['token'];
        Map userInfo = val.data['data'];
        AuthService().setToken(token);
        AuthService().setInfo(userInfo);
        Navigator.pushNamed(context, '/home');
        print("debugging");
      } else {
        addError(val.data['msg']);
      }
    });
  }
  // dynamic getInfo(BuildContext context) async{
  //   AuthService().getInfo().then((val){
  //     // _userInfo.sink.add(val);
  //     return val;
  //   });
  // }

  dynamic logout(BuildContext context) async {
    AuthService().removeToken();
    Navigator.popAndPushNamed(context, '/login');
  }

  // close streams
  dispose() {
    _email.close();
    _password.close();
    _errorMessage.close();
  }
}
