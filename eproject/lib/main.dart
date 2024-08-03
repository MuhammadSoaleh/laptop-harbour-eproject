import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eproject/authgate.dart';
import 'package:eproject/firebase_options.dart';
import 'package:eproject/LoginPage.dart'; // Ensure this path is correct and points to where the Login widget is defined
import 'package:eproject/index.dart';
import 'package:eproject/register.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure bindings are initialized
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
      debugShowCheckedModeBanner: false,
      home: AuthGate(),
      initialRoute: '/',
      routes: {
        // '/': (context) => home(), 
        // '/register': (context) => RegisterPage(obscureText: true, onTap: onTap),
      },
    );
  }
}
    
