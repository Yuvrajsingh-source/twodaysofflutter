import 'package:catalog/models/catalog.dart';
import 'package:catalog/widget/drawer.dart';
import 'package:catalog/widget/item_widget.dart';
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
      body: ListView.builder(
        itemCount: catalogModels.items.length,
        itemBuilder: (context, index) {
          return ItemWidgets(item: catalogModels.items[index],);
        },
      ),
    );
  }
}
