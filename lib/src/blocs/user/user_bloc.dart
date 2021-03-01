import 'package:flutter/cupertino.dart';
import 'package:flutter_chat_app_demo/src/model/user_model.dart';
import 'package:flutter_chat_app_demo/src/providers/provider.dart';
import 'package:flutter_chat_app_demo/src/repositories/repository.dart';
import 'package:rxdart/rxdart.dart';

class UserBloc implements BlocBase {
  final _respository = new Repository();
  final _userFetcher = BehaviorSubject<List<UserModel>>();
  final _userInfo = BehaviorSubject<UserModel>();

  Stream<List<UserModel>> get allUser => _userFetcher.stream;
  Stream<UserModel> get userInfo => _userInfo.stream;

  dynamic getUserInfo(BuildContext context) async {
    var user = await _respository.getUserInfo();
    print(user.userName);
    _userInfo.sink.add(user);
  }

  dynamic fetchAllUsers(BuildContext context) async {
    List userModel = await _respository.fetchAllUsers();
    _userFetcher.sink.add(userModel);
  }

  dispose() {
    _userFetcher.close();
    _userInfo.close();
  }
}

// final blocUser = UserBloc();
