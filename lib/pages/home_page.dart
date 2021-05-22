import 'package:catalog/models/catalog.dart';
import 'package:catalog/widget/drawer.dart';
import 'package:catalog/widget/item_widget.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int days = 30;
  @override
  void initState() {
    super.initState();
    loaddata();
  }

  loaddata() async {
    await Future.delayed(Duration(seconds: 3));
    final catalogjson =
        await rootBundle.loadString("assets/files/catalog.json");
    final jsondecode = jsonDecode(catalogjson);
    var productsData = jsondecode["products"];
    catalogModels.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
