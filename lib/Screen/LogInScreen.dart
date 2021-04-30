import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../Provider/AuthProvider/AuthenticationService.dart';
import 'HomeScreen.dart';
import 'package:provider/provider.dart';

class LogInScreen extends StatelessWidget {
  final _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // var screenSize = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(245, 245, 220, 1),
        body: Container(
          child: Stack(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Welcome to the ............"),
                  SizedBox(
                    height: 150,
                  ),
                  Card(
                    color: Colors.blueAccent,
                    elevation: 15,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    margin: EdgeInsets.all(20),
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Form(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            TextFormField(
                              style: TextStyle(fontSize: 20),
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  prefixIcon: Text(
                                    "+91",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  contentPadding: EdgeInsets.all(0),
                                  hintText: "Enter you phone number"),
                              controller: _phoneController,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              height: 50,
                              width: double.infinity,
                              child: RaisedButton(
                                onPressed: () {
                                  final phone = _phoneController.text.trim();
                                  context
                                      .read<AuthenticationService>()
                                      .loginUser(phone, context);
                                },
                                child: Text("Recieve OTP"),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
