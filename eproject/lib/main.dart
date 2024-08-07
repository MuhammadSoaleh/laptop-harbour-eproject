import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eproject/authgate.dart';
import 'package:eproject/firebase_options.dart';
import 'package:eproject/loginpage.dart'; // Ensure this path is correct and points to where the Login widget is defined
import 'package:eproject/contactus.dart';
import 'package:eproject/register.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure bindings are initialized
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthGate(),
      initialRoute: '/',
      routes: {
        // Define your routes here if needed
        // '/register': (context) => RegisterPage(),
        // '/login': (context) => LoginPage(),
        // '/contactus': (context) => ContactUsPage(),
      },
    );
  }
}
