import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:new_project/Screen/LogInScreen.dart';
import 'package:new_project/Screen/HomeScreen.dart';
import 'package:provider/provider.dart';

class AuthenticationWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User>();

    if (firebaseUser != null) {
      print("123");
      return HomeScreen();
    }
    print('4567');
    return LogInScreen();
  }
}
