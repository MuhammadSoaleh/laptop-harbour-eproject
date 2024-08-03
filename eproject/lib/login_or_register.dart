import 'package:flutter/material.dart';
import 'package:eproject/LoginPage.dart';
import 'package:eproject/register.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  bool showLoginPage = true;

  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(ontap:togglePages);
    } else {
      return RegisterPage(
        ontap:togglePages
      );
    }
  }
}
