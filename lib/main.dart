import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_chat_app_demo/src/providers/depedence_injection.dart';
import 'package:flutter_chat_app_demo/src/providers/initializer.dart';
import 'package:flutter_chat_app_demo/src/providers/injection.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'src/app.dart';
import 'package:flutter/rendering.dart';

// void main(){
//   socket.connectToServer();
//   runApp(App());
// }
Injector injector;
void main() async {
  DependencyInjection().initialise(Injector());
  injector = Injector.getInjector();
  await AppInitializer().initialise(injector);
  //debugPaintSizeEnabled=true;
  runApp(App());
}