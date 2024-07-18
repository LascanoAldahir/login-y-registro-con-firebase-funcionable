import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firstscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyB1cBZL-Sh3w3st6NRk9Ee-kghJ6hAr37U",
      authDomain: "login-flutter-b681c.firebaseapp.com",
      projectId: "login-flutter-b681c",
      storageBucket: "login-flutter-b681c.appspot.com",
      messagingSenderId: "303560030462",
      appId: "1:303560030462:web:061f66a82eb7ae8c37cdaf",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstScreen(),
    );
  }
}
