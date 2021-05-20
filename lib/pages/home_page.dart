import 'package:catalog/widget/drawer.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  int days = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
      ),
      drawer: Mydrawer(),
    );
  }
}
