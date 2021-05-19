import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Column(
              children: [
                Image.asset("assets/images/login_image.png", fit: BoxFit.cover),
                SizedBox(height: 20),
                Text("Welcome",
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                SizedBox(height: 20),
                TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Username", labelText: "Username")),
                TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter password", labelText: "Password")),
                SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                  onPressed: null,
                  child: Text("Login"),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
