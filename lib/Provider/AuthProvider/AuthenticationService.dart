import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:new_project/Provider/Firebase/AppFirebase.dart';
import 'package:new_project/Screen/HomeScreen.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthenticationService {
  final FirebaseAuth _firebaseAuth;

  AuthenticationService(this._firebaseAuth);

  Stream<User> get authStateChanges => _firebaseAuth.idTokenChanges();

  Future<void> signOut() async {
    print("signout called");
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    // var xxx = await sharedPreferences.remove("PHONE");
    sharedPreferences.remove("PHONE");
    // if (xxx) {
    //   print("Share removed");
    // } else {
    //   print("share removed 12345");
    // }
    await _firebaseAuth.signOut();
  }

  final _codeController = TextEditingController();

  String verificationId;

  Future<void> loginUser(String phone, BuildContext context) async {
    // FirebaseAuth _auth = FirebaseAuth.instance;

    print(phone);

    _firebaseAuth.verifyPhoneNumber(
      phoneNumber: "+91" + phone,
      timeout: Duration(seconds: 10),
      verificationCompleted: (AuthCredential credential) async {
        print("object 12345");
        // Navigator.of(context).pop();
        print("object Navigation 1");
        UserCredential result =
            await _firebaseAuth.signInWithCredential(credential);

        User user = result.user;

        if (user != null) {
          SharedPreferences sharedPreferences =
              await SharedPreferences.getInstance();
          sharedPreferences.setString(
            "PHONE",
            phone.toString(),
          );
          print("Print user id ${user.uid}");
          print("SharedPreference set to $phone");
          print("object Navigation 2");
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomeScreen()));
        } else {
          print("object Navigation 3");
          print("Error");
        }

        //This callback would gets called when verification is done auto maticlly
      },
      verificationFailed: (FirebaseAuthException exception) {
        print("object Navigation 4");
        print(exception);
      },
      codeSent: (String verificationId, [int forceResendingToken]) {
        print("object Navigation 5");
        showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) {
              return AlertDialog(
                title: Text("Give the code?"),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    TextField(
                      controller: _codeController,
                    ),
                  ],
                ),
                actions: <Widget>[
                  FlatButton(
                    child: Text("Confirm"),
                    textColor: Colors.white,
                    color: Colors.blue,
                    onPressed: () async {
                      final code = _codeController.text.trim();
                      AuthCredential credential = PhoneAuthProvider.credential(
                          verificationId: verificationId, smsCode: code);

                      UserCredential result =
                          await _firebaseAuth.signInWithCredential(credential);

                      User user = result.user;
                      Navigator.of(context).pop();
                      if (user != null) {
                        // SharedPreferences sharedPreferences =
                        //     await SharedPreferences.getInstance();
                        // sharedPreferences.setString(
                        //   "PHONE",
                        //   phone.toString(),
                        // );
                        // print("SharedPreference set to $phone");
                        // Provider.of<Appfirebase>(
                        //   context,
                        //   listen: false,
                        // ).createDocument(context);
                        print("calling createDocument function");
                        Provider.of<Appfirebase>(
                          context,
                          listen: false,
                        ).createDocument(user);
                        print("object Navigation 6");
                        print("Print user id ${user.uid}");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      } else {
                        print("Error");
                      }
                      Navigator.of(context).pop();
                    },
                  )
                ],
              );
            });
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        print("object Navigation 7");
        this.verificationId = verificationId;
        print(verificationId);
        print("Timout");
      },
    );
  }
}
