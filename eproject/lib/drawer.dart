import 'package:eproject/authservice.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyWidget extends StatelessWidget {
  void logout() {
    final _auth = AuthServices();
    _auth.signOut();
  }

  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.orange[200],
      child: Column(
        children: [
          // logo
          DrawerHeader(
            child: Center(
              child: IconButton(
                onPressed: logout,
                icon: Icon(Icons.logout),
              ),
            ),
          ),
          // home list title
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: ListTile(
              title: Text("H O M E"),
              leading: Icon(Icons.home),
            ),
          ),
          // setting list title
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: ListTile(
              title: Text("S E T T I N G S"),
              leading: Icon(Icons.settings),
            ),
          ),
          // logout list title
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: ListTile(
              title: Text("L O G O U T"),
              leading: Icon(Icons.logout),
              onTap: logout,
            ),
          ),
        ],
      ),
    );
  }
}
