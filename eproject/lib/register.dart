import 'package:eproject/my_button.dart';
import 'package:eproject/my_textfeild.dart';
import 'package:flutter/material.dart';
import 'package:eproject/authservice.dart';
class RegisterPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final TextEditingController ConfirmpassController = TextEditingController();

  final void Function()? ontap;

  RegisterPage({super.key, required this.ontap});

  void register(BuildContext context) {
    final auth = AuthServices();
    if (passController.text == ConfirmpassController.text) {
      try {
        auth.signupwithemailpassword(emailController.text, passController.text);
      } catch (e) {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: Text(e.toString()),
                ));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "REGISTER",
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
        children: [Opacity(opacity: 0.5),
          Positioned.fill(
            child:
           
            
            Image.network("https://cdn.pixabay.com/photo/2016/11/07/10/14/laptop-1805315_640.jpg",
            fit: BoxFit.cover,),
          ),
          Opacity(opacity: 0.5),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Image.asset(
                  "assets/WhatsApp_Image_2024-07-26_at_11.12.40_PM-removebg.png.png",
                  height: 250,
                  width: 300,
                ),
                // Text(
                //   "REGISTER",
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
          SizedBox(height: 20),
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
            SizedBox(height: 10),
          MyTextField(
            hintText: "Conform Your Password",
            obscuretext: true,
            textController: ConfirmpassController,
          ),
                  MyButton(text: "Register", onTap: () => register(context)),
                    Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already Registered ? ",
                style: TextStyle(color: Colors.white),
              ),
              GestureDetector(
                onTap: ontap,
                child: Text(
                  " Login Now ",
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
