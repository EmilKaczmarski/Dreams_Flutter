import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  SignUpApp(),
);

class SignUpApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => SignUpScreen(),
      },
    );
  }
}

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void _signInButtonPressed() {
    }
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 24.0),
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 40,
                    ),
                  )),
              SignUpForm(),
              FlatButton(
                padding: EdgeInsets.all(10),
                onPressed: null,
                child: Container(
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.blueGrey[100],
                  ),
                  padding: EdgeInsets.all(10),
                  child: Text('Sign up'),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 14, 0, 0),
                child: Text("Already registered?",
                  style: TextStyle(
                      color: Colors.grey[500]
                  ),
                ),
              ),
              FlatButton(
                child: Text("sing in"),
              )
            ]),
      ),
    );
  }
}

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _firstNameTextController = TextEditingController();
  final _lastNameTextController = TextEditingController();
  final _usernameTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 8.0),
            child: TextFormField(
              controller: _firstNameTextController,
              decoration: InputDecoration(
                hintText: 'First name',
                hintStyle: TextStyle(color: Colors.grey[400]),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey[200]),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey[900]),
                ),
              ),
              style: TextStyle(
                color: Colors.blueGrey[600],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 8.0),
            child: TextFormField(
              controller: _lastNameTextController,
              decoration: InputDecoration(
                hintText: 'Last name',
                hintStyle: TextStyle(color: Colors.grey[400]),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey[200]),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey[900]),
                ),
              ),
              style: TextStyle(
                color: Colors.blueGrey[600],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 8.0),
            child: TextFormField(
              controller: _usernameTextController,
              decoration: InputDecoration(
                hintText: 'Username',
                hintStyle: TextStyle(color: Colors.grey[400]),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey[200]),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey[900]),
                ),
              ),
              style: TextStyle(
                color: Colors.blueGrey[600],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
