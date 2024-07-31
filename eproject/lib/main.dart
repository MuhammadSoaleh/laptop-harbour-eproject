import 'package:eproject/authgate.dart';
import 'package:eproject/firebase_options.dart';
import 'package:eproject/LoginPage.dart'; // Ensure this path is correct and points to where the Login widget is defined
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  await Firebase.initializeApp(
     options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AuthGate(
        
      ), // Ensure Login is a defined widget
      debugShowCheckedModeBanner: false,
    );
  }
}
