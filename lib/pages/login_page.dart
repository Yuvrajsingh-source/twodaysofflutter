import 'package:catalog/pages/home_page.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  Loginpage({Key key}) : super(key: key);

  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name = "";
  bool changedButton = false;
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Form(
        key: _formkey,
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  Image.asset("assets/images/hey.png", fit: BoxFit.cover),
                  SizedBox(height: 20),
                  Text("Welcome $name",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  SizedBox(height: 20),
                  TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return "username cannot be empty";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                      decoration: InputDecoration(
                          hintText: "Enter Username", labelText: "Username")),
                  TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return "password cannot be empty";
                        } else if (value.length < 6) {
                          return "password length should be at least 6";
                        }
                        return null;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter password", labelText: "Password")),
                  SizedBox(
                    height: 20.0,
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(changedButton ? 50 : 8),
                    color: Colors.deepPurple,
                    child: InkWell(
                      splashColor: Colors.amberAccent,
                      onTap: () async {
                        if (_formkey.currentState.validate()) {
                          changedButton = true;
                          setState(() {});
                          await Future.delayed(Duration(seconds: 2));
                          await Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Homepage()));
                          changedButton = false;
                          setState(() {});
                        }
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changedButton ? 50 : 150,
                        height: 50,
                        alignment: Alignment.center,
                        child: changedButton
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                'Login',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
