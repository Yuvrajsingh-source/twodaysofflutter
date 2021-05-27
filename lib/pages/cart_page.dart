import 'dart:html';

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Cartpage extends StatelessWidget {
  const Cartpage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.scaffoldBackgroundColor,
      appBar: AppBar(title: "Cart".text.make()),
      body: Column(
        children: [
          Expanded(
            child: Placeholder(),
          ),
          _cartTotal(),
        ],
      ),
    );
  }
}

class _cartTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.red),
        width: 450,
        height: 100,
        child: Row(
          children: [
            "\$999"
                .text
                .xl3
                .bold
                .color(context.theme.accentColor)
                .make()
                .px(50),
            Container(
              color: Colors.white,
              width: 100,
              height: 50,
              child: "Buy".text.make(),
            )
          ],
        ),
      ),
    );
  }
}
