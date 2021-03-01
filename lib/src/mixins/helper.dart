import 'package:flutter/material.dart';
import 'package:flutter_chat_app_demo/src/blocs/authentication/authentication_bloc.dart';

class Helper {
  Widget errorMessage(AuthenticationBloc authBloc) {
    return StreamBuilder<String>(
      stream: authBloc.errorMessage,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Text(snapshot.data, style: TextStyle(color: Colors.red));
        }
        return Text('');
      },
    );
  }
}
