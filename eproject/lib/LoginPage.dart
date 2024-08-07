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
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "LOG IN",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: [
                Shadow(
                  blurRadius: 10.0,
                  color: Colors.black.withOpacity(0.5),
                  offset: Offset(0, 2),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.black,
      ),
      body: Stack(
        children: [ 
         Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://cdn.pixabay.com/photo/2016/11/07/10/14/laptop-1805315_640.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.orange.withOpacity(1),  // 75% opacity
              BlendMode.dstATop,
            ),
          ),
        ),),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Image.asset(
                  "assets/WhatsApp_Image_2024-07-26_at_11.12.40_PM-removebg.png.png",
                  height: 300,
                  width: 300,
                ),
                // Text(
                //   "LOG IN",
                //   style: TextStyle(
                //     fontSize: 24,
                //     fontWeight: FontWeight.bold,
                //     color: Colors.white,
                //     shadows: [
                //       Shadow(
                //         blurRadius: 10.0,
                //         color: Colors.black.withOpacity(0.5),
                //         offset: Offset(0, 2),
                //       ),
                //     ],
                //   ),
                // ),
                Column(
                  children: [
                    SizedBox(height: 25, width: 50),
                     //email textfield
          SizedBox(height: 10),
          MyTextField(
            hintText: "Enter Your Email",
            obscuretext: false,
            textController: emailController,
          ),
                    SizedBox(height: 25, width: 50),
                              //pass textfield
          SizedBox(height: 10),
          MyTextField(
            hintText: "Enter Your Password",
            obscuretext: true,
            textController: passController,
          ),
                   MyButton(text: "Login", onTap: () => login(context)),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
