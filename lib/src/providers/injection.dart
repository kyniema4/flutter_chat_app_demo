import 'package:flutter_chat_app_demo/src/blocs/socket/socket_bloc.dart';
import 'package:flutter_chat_app_demo/src/blocs/user/user_bloc.dart';
import 'package:flutter_chat_app_demo/src/repositories/user_service.dart';
import 'package:get_it/get_it.dart';

GetIt  getIt = GetIt.instance;

void configureDependencies() async {
  // TODO: đăng kí các dependency trong này
  //getIt.registerFactory<UserBloc>(()=>UserBloc());
  getIt.registerSingleton<SocketBloc>(SocketBloc());
}
