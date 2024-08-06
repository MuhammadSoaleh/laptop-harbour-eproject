import 'package:eproject/authservice.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  void logout() {
    final _auth = AuthServices();
    _auth.signOut();
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
                  "BRANDS",
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
          ],
        ),
      ),
    );
  }
}
