import 'package:catalog/models/catalog.dart';
import 'package:flutter/material.dart';

class ItemWidgets extends StatelessWidget {
  final Item item;

  const ItemWidgets({Key key, @required this.item})
      : assert(item != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListTile(
          onTap: () {
            print(item.name);
          },
          leading: Image.network(
            item.image,
            height: 40,
          ),
          title: Text(item.name),
          subtitle: Text(item.desc),
          trailing: Text(
            "\$${item.price.toString()}",
            textScaleFactor: 1.0,
            style: TextStyle(
              color: Colors.deepPurple,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
