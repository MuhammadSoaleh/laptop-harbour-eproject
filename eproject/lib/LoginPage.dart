import 'package:flutter/material.dart';

import 'package:eproject/my_button.dart';
import 'package:eproject/my_textfeild.dart';
import 'package:flutter/material.dart';
import 'package:eproject/authservice.dart';
class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  //tap to go on register page
  final void Function()? ontap;

  LoginPage({super.key, required this.ontap});

  void login(BuildContext context) async {
    final AuthService = AuthServices();
    // try login
    try {
      await AuthService.signinwithEmailAndPassword(
          emailController.text, passController.text);
    } catch (e) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text(e.toString()),
              ));
    }
  }
  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        
          child: Column(
            children: [
              Image.asset(
                "assets/login_dark.png",
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome back!",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(
                      height: 25,width:50
                    ),
                    const Text(
                      "Log in with the data you entered during your registration.",
                    ),
                     SizedBox(height: 25, width: 50),
                     //email textfield
          SizedBox(height: 10),
                    MyTextField(
                      hintText: "Enter Your Email",
                      obscuretext: false,
                      textController: emailController,
                    ),
                     SizedBox(height: 25, width: 50),
                     //email textfield
          SizedBox(height: 10),
                    MyTextField(
                      hintText: "Enter Your Password",
                      obscuretext: true,
                      textController: passController,
                    ),
                  
                    
                    Center(
                      child: MyButton(
                        text: "Login",
                        onTap: () => login(context),
                      ),
                    ),
                     Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Not Registered ? ",
                style: TextStyle(color: Colors.white),
              ),
              GestureDetector(
                onTap: ontap,
                child: Text(
                  " Register Now ",
                  style: TextStyle(
                      color: Colors.orange, fontWeight: FontWeight.bold),
                ),
              )
            ],
          )
                  ],
                ),
              )
            ],
          ),
        ),
      );
    
  }
}
