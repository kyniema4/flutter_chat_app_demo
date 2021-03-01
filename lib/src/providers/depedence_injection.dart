import 'package:flutter_chat_app_demo/src/blocs/socket/socket_bloc.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';

class DependencyInjection {
  Injector initialise(Injector injector) {
    injector.map<SocketBloc>((i) => SocketBloc(), isSingleton: true);
    
    return injector;
  }
}