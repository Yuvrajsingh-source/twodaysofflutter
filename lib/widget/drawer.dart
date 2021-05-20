import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.deepPurple),
                margin: EdgeInsets.zero,
                accountName: Text("Yuvraj Singh"),
                accountEmail: Text("Yuvraajsingh9301@gmail.com"),
                currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/free.png")),
              ),
            ),
            ListTile(
                leading: Icon(
                  CupertinoIcons.home,
                  color: Colors.white,
                ),
                title: Text(
                  'Home',
                  textScaleFactor: 1.1,
                  style: TextStyle(color: Colors.white),
                )),
            ListTile(
                leading: Icon(
                  CupertinoIcons.profile_circled,
                  color: Colors.white,
                ),
                title: Text(
                  'Profile',
                  textScaleFactor: 1.1,
                  style: TextStyle(color: Colors.white),
                )),
            ListTile(
                leading: Icon(
                  CupertinoIcons.mail,
                  color: Colors.white,
                ),
                title: Text(
                  'Email me',
                  textScaleFactor: 1.1,
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }
}
