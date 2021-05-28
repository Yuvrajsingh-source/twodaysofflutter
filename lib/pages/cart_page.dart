import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Cartpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.scaffoldBackgroundColor,
      appBar: AppBar(title: "Cart".text.make()),
      body: Column(
        children: [
          Expanded(
            child: _CartList(),
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
      padding: const EdgeInsets.only(bottom: 22, left: 15, right: 15),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.red),
        width: 450,
        height: 80,
        child: Row(
          children: [
            "\$999"
                .text
                .xl2
                .bold
                .color(context.theme.canvasColor)
                .make()
                .px(40),
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: InkWell(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: "we are work on this function.".text.make(),
                  ));
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: context.theme.accentColor,
                  ),
                  width: 140,
                  height: 60,
                  child: "Checkout"
                      .text
                      .color(context.theme.canvasColor)
                      .xl
                      .bold
                      .make(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _CartList extends StatefulWidget {
  @override
  __CartListState createState() => __CartListState();
}

class __CartListState extends State<_CartList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 50,
          itemBuilder: (context, index) => ListTile(
              title: "Item1".text.color(context.theme.accentColor).make(),
              trailing: IconButton(
                icon: Icon(CupertinoIcons.delete),
                color: context.theme.accentColor,
                onPressed: () {},
              ))),
    );
  }
}
