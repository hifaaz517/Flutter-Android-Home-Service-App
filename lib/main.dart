import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:new_project/Auth_Firebase/AuthenticationWrapper.dart';
import 'package:new_project/Provider/Firebase/AppFirebase.dart';
import 'package:new_project/Provider/Model/CategoryProvider.dart';
import 'package:new_project/Provider/Model/RateCardProvider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Provider/AuthProvider/AuthenticationService.dart';
import 'Provider/SharedPreferenceProvider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => CategoryProvider(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => SharedPreferencesProvider(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Appfirebase(FirebaseFirestore.instance),
        ),
        ChangeNotifierProvider(
          create: (ctx) => RateCardProvider(),
        ),
        Provider<AuthenticationService>(
          create: (_) => AuthenticationService(FirebaseAuth.instance),
        ),
        StreamProvider(
          create: (context) =>
              context.read<AuthenticationService>().authStateChanges,
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          hintColor: Colors.white,
          backgroundColor: Colors.amber,
          // primarySwatch: Colors.teal,
          cursorColor: Colors.teal[700],
          primaryColor: Color.fromRGBO(0, 173, 181, 1),
          buttonColor: Colors.teal[500],
          accentColor: Colors.tealAccent[700],
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: AuthenticationWrapper(),
      ),
    );
  }
}
