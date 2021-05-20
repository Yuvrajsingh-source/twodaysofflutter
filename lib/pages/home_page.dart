import 'package:catalog/widget/drawer.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  int days = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 80),
          child: Text(
            'Catalog App',
            style: TextStyle(color: Colors.black, fontSize: 19),
          ),
        ),
      ),
      drawer: Mydrawer(),
    );
  }
}
