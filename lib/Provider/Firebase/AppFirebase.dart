import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:date_format/date_format.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:random_string/random_string.dart';
import 'dart:convert';

class Appfirebase with ChangeNotifier {
  final FirebaseFirestore _firebaseFirestore;

  Appfirebase(this._firebaseFirestore);
  CollectionReference collectionReference;

  String xxx = "SomeName123";
  String yyy = "adfasdfsdf";

  void createDocument(User user) {
    print("Enter createDocument function");
    // _firebaseFirestore.c
    // collectionReference = _firebaseFirestore.collection("User");
  }
  // void createDocument(BuildContext context) {
  //   var firebaseUser = context.read<User>();
  //   _firebaseFirestore.collection("User").doc(firebaseUser.uid);
  // }

  addData123() {
    collectionReference = _firebaseFirestore.collection("Active");

    _firebaseFirestore
        .collection("User")
        .doc("user.uid")
        .update({"a232323sdfds": "data,"});
    // FirebaseFirestore.instance.collection("User").doc("user.uid");
    // collectionReference.doc("1").set({
    //   xxx: ['fasdfas', 'sdfsadf', 'dfasdfas'],
    // });
    collectionReference.doc("1").update({
      xxx + yyy: ['fas', 'sdf', 'd1234123423fas'],
    });
  }

  String createId() {
    String date = formatDate(DateTime.now(), [yyyy, mm, dd]);
    String string = randomAlphaNumeric(5).toUpperCase();
    String id = '$date-$string';
    return id.toString();
  }

  // Future<bool> getDoc(User user) async {
  //   var a =
  //       await _firebaseFirestore.collection('collection').doc(user.uid).collection("Order").doc().get();
  //   if (a.exists) {
  //     print('Exists');
  //     return true;
  //   }
  //   if (!a.exists) {
  //     print('Not exists');
  //     return false;
  //   }
  // }

  pushRequest({
    @required int categpryId,
    @required String location,
    @required String fullName,
    @required String emailId,
    @required String mobileNumber,
    @required String date,
    @required String comment,
    @required BuildContext context,
  }) {
    String orderId = createId();
    var user = context.read<User>();
    var dataMap = {
      "categoryId": categpryId,
      "location": location,
      "fullname": fullName,
      "emailId": emailId,
      "mobileNumber": mobileNumber,
      "date": date,
      "comment": comment,
    };
    // _firebaseFirestore.collection("User").doc(user.uid).set(
    //   {
    //     orderId: dataMap,
    //   },
    // );
    _firebaseFirestore
        .collection("User")
        .doc(user.uid)
        .collection("Order")
        .doc(orderId)
        .set({
      "categoryId": categpryId,
      "location": location,
      "fullname": fullName,
      "emailId": emailId,
      "mobileNumber": mobileNumber,
      "date": date,
      "comment": comment,
    });
    _firebaseFirestore.collection("Active").doc(categpryId.toString()).set(
      {
        orderId: dataMap,
      },
    );
  }
}
