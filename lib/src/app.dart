import 'package:flutter/material.dart';
import 'package:flutter_chat_app_demo/src/blocs/authentication/authentication_bloc.dart';
import 'package:flutter_chat_app_demo/src/providers/provider.dart';
import 'package:flutter_chat_app_demo/src/providers/provider.dart';
import 'package:flutter_chat_app_demo/src/repositories/auth_service.dart';
import 'package:flutter_chat_app_demo/src/screens/authen/forgot_password.dart';
import 'package:flutter_chat_app_demo/src/screens/authen/login_screen.dart';
import 'package:flutter_chat_app_demo/src/screens/authen/signup_screen.dart';
import 'package:flutter_chat_app_demo/src/screens/home/chatChat/chatChat.dart';
import 'package:flutter_chat_app_demo/src/screens/home/chatChat/chatchat_edit.dart';
import 'package:flutter_chat_app_demo/src/screens/home/chatchat_detail.dart';
import 'package:flutter_chat_app_demo/src/screens/home/onboarding1.dart';
import 'package:flutter_chat_app_demo/src/screens/home/tabs.dart';
//import 'package:flutter_chat_app_demo/src/screens/login_demo.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthenticationBloc>(
        bloc:AuthenticationBloc(),
        child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Rest Auth",
        home: FutureBuilder(
          future: AuthService().getToken(),
          builder: (_, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.hasData) {
              return TabsPage();
            } else {
              return LoginScreen();
            }
          },
        ),
        routes: {
          '/login': (_) => new LoginScreen(),
          '/signup': (_) => new SignupScreen(),
          '/forgot_password': (_) => new ForgotPassword(),
          '/recommend': (_) => OnBoardingPage(),
          '/home': (_) => TabsPage(),
          '/chatchat': (_) => ChatChatPage(),
          '/chatchat_edit': (_) => ChatChatEditPage(),
          '/chatchatDetail': (BuildContext context) => ChatChatDetail(),
        },
      ),
    );
  }
}
