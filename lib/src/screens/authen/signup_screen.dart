import 'package:flutter/material.dart';
import 'package:flutter_chat_app_demo/src/blocs/authentication/authentication_bloc.dart';
import 'package:flutter_chat_app_demo/src/providers/provider.dart';

class SignupScreen extends StatelessWidget {
  AuthenticationBloc authBloc;

  @override
  Widget build(BuildContext context) {
    authBloc = BlocProvider.of(context);
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 100.0, left: 50.0, right: 50.0),
          height: 550.0,
          child: Form(
            child: Column(
              children: <Widget>[
                _emailField(authBloc),
                _passwordField(authBloc),
                Container(
                  width: 300,
                  height: 35,
                  //child: Helper().errorMessage(formBloc),
                ),
                _checkBox(),
                _buttonField(authBloc),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/forgot_password'),
                  child: Container(
                    child: Text('Forgot password?'),
                    alignment: Alignment.bottomLeft,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _emailField(AuthenticationBloc bloc) {
    return StreamBuilder<String>(
        stream: bloc.email,
        builder: (context, snapshot) {
          return TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: 'you@example.com',
              labelText: 'Email',
              errorText: snapshot.error,
            ),
            onChanged: bloc.changeEmail,
          );
        });
  }

  Widget _passwordField(AuthenticationBloc bloc) {
    return StreamBuilder<String>(
        stream: bloc.password,
        builder: (context, snapshot) {
          return TextField(
            obscureText: true,
            onChanged: bloc.changePassword,
            maxLength: 20,
            decoration: InputDecoration(
              hintText: '',
              labelText: 'Password',
              errorText: snapshot.error,
            ),
          );
        });
  }

  Widget _checkBox() {
    return Row(
      children: <Widget>[
        Checkbox(
          onChanged: (checked) => {},
          value: true,
        ),
        Text('keep me logged in'),
      ],
    );
  }

  Widget _buttonField(AuthenticationBloc bloc) {
    return StreamBuilder<bool>(
        stream: bloc.submitValidForm,
        builder: (context, snapshot) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: RaisedButton(
              onPressed: () {
                if (snapshot.hasError) {
                  return null;
                }
                return bloc.register(context);
              },
              child: const Icon(Icons.arrow_forward),
              color: Colors.amber,
              clipBehavior: Clip.hardEdge,
              elevation: 10,
              disabledColor: Colors.blueGrey,
              disabledElevation: 10,
              disabledTextColor: Colors.white,
            ),
          );
        });
  }
}
