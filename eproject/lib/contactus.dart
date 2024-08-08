import 'package:eproject/authservice.dart';
import 'package:eproject/my_button.dart';
import 'package:eproject/my_textfeild.dart';
import 'package:eproject/drawer.dart'; // Ensure this is the correct import for MyWidget
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ContactUsPage extends StatefulWidget {
  @override
  _ContactUsPageState createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  void submit(BuildContext context) {
    // Implement your registration logic here
  }

  void ontap() {
    // Implement your onTap logic here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(drawer : MyWidget(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange[200],
        
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            
          // Using the drawer widget here
            Center(
              child: Column(crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset(
                    "assets/WhatsApp_Image_2024-07-26_at_11.12.40_PM-removebg.png.png",
                    height: 150,
                    width: 150,
                    
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.search,
              color: Colors.black,
              size: 36.0,
            ),
          ],
        ),
      ),
       // Ensure you have DrawerWidget implemented properly.
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const NetworkImage("https://cdn.pixabay.com/photo/2021/01/05/16/26/laptop-5891723_640.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.orange.withOpacity(0.8),
              BlendMode.dstATop,
            ),
          ),
        ),
        child: Column(
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.all(16.0),
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
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 25),
                    MyTextField(
                      hintText: "Enter Your Email",
                      obscuretext: false,
                      textController: emailController,
                    ),
                    const SizedBox(height: 25),
                    MyTextField(
                      hintText: "Enter Your Name",
                      obscuretext: false,
                      textController: nameController,
                    ),
                    const SizedBox(height: 10),
                    MyTextField(
                      hintText: "Type Your Message Here",
                      obscuretext: false,
                      textController: messageController,
                    ),
                    MyButton(
                      text: "Submit",
                      onTap: () {
                        submit(context);
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Thanks For ",
                          style: TextStyle(color: Colors.white),
                        ),
                        GestureDetector(
                          onTap: ontap,
                          child: const Text(
                            " Remember Us",
                            style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.orange[200],
        selectedItemColor: Colors.orange[600],
        unselectedItemColor: Colors.black,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "Chats",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group_work),
            label: "Channels",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
