import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:new_project/Widgets/ServiceTile.dart';
import 'package:provider/provider.dart';

class ServiceLog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var user = context.read<User>();

    return Scaffold(
        backgroundColor: Color.fromRGBO(245, 245, 220, 1),
        appBar: AppBar(
          elevation: 10,
          backgroundColor: Color.fromRGBO(0, 173, 181, 1),
          title: Text("Service Log"),
        ),
        body: StreamBuilder(
          builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: Text("adfasdfsdfasdfas"),
              );
            }
            return ListView(
              children: snapshot.data.docs.map((document) {
                return ServiceTile(
                  location: document['location'],
                  fullName: document['fullname'],
                  comment: document['comment'],
                  date: document['date'],
                  mobileNumber: document['mobileNumber'],
                  emailId: document['emailId'],
                );
              }).toList(),
            );
          },
          stream: FirebaseFirestore.instance
              .collection("User")
              .doc(user.uid)
              .collection("Order")
              .snapshots(),
        ));
  }
}
