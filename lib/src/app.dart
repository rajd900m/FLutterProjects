import 'package:LoginBLoC/src/blocs/provider.dart';
import 'package:LoginBLoC/src/screens/login_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        title: 'Log Me In',
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepOrange,
            title: Text('Login'),
          ),
          body: LoginScreen(),
        ),
      ),
    );
  }
}
