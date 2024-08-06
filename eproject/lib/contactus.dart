import 'package:eproject/authservice.dart';
import 'package:eproject/my_button.dart';
import 'package:eproject/my_textfeild.dart';
import 'package:flutter/material.dart';

class Contactuspage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  Contactuspage({Key? key}) : super(key: key);

  void logout() {
    final _auth = AuthServices();
    _auth.signOut();
  }

  void Submit(BuildContext context) {
    // Implement your registration logic here
  }

  void ontap() {
    // Implement your onTap logic here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: logout, icon: Icon(Icons.logout)),
            Image.asset(
              "assets/WhatsApp_Image_2024-07-26_at_11.12.40_PM-removebg.png.png",
              height: 200,
              width: 150,
            ),
            Icon(
              Icons.search,
              color: Colors.black,
              size: 36.0,
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://cdn.pixabay.com/photo/2021/01/05/16/26/laptop-5891723_640.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.orange.withOpacity(0.8), // 20% opacity
              BlendMode.dstATop,
            ),
          ),
        ),
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "CONTACT US",
                  style: TextStyle(
                    color: Colors.orange,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    height: 3,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 25),
                        // Email text field
                        MyTextField(
                          hintText: "Enter Your Email",
                          obscuretext: false,
                          textController: emailController,
                        ),
                        SizedBox(height: 25),
                        // Name text field
                        MyTextField(
                          hintText: "Enter Your Name",
                          obscuretext: false,
                          textController: nameController,
                        ),
                        SizedBox(height: 10),
                        // Message text field
                        MyTextField(
                          hintText: "Type Your Message Here",
                          obscuretext: false,
                          textController: messageController,
                        ),
                        MyButton(text: "Submit", ontap: () {}),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Thanks For ",
                              style: TextStyle(color: Colors.white),
                            ),
                            GestureDetector(
                              onTap: ontap,
                              child: Text(
                                " Remember Us",
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Example MyTextField and MyButton widgets
class MyTextField extends StatelessWidget {
  final String hintText;
  final bool obscuretext;
  final TextEditingController textController;

  MyTextField({
    required this.hintText,
    required this.obscuretext,
    required this.textController,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: textController,
        obscureText: obscuretext,
        decoration: InputDecoration(
          hintText: hintText,
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback ontap;

  MyButton({required this.text, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
      child: ElevatedButton(
        onPressed: ontap,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 15.0), backgroundColor: Colors.orange,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ), // background color
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
