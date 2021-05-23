import 'package:catalog/models/catalog.dart';
import 'package:catalog/widget/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Homedetail extends StatelessWidget {
  final Item catalog;

  const Homedetail({Key key, @required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.transparent),
        bottomNavigationBar: Container(
          color: Colors.white,
          child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "\$${catalog.price}",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(StadiumBorder())),
                onPressed: () {},
                child: Text("Buy", style: TextStyle(fontSize: 16)),
              ).wh(80, 40)
            ],
          ),
        ),
        body: SafeArea(
            bottom: false,
            child: Column(
              children: [
                Hero(
                        tag: Key(catalog.id.toString()),
                        child: Image.network(catalog.image))
                    .h32(context),
                Expanded(
                  child: VxArc(
                      edge: VxEdge.TOP,
                      height: 30,
                      arcType: VxArcType.CONVEY,
                      child: Container(
                        width: context.screenWidth,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 60),
                              child: Text(catalog.name,
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text(
                                catalog.desc,
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black87),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 25),
                              child: Text(
                                catalog.longdesc,
                                style: TextStyle(
                                    fontSize: 19, color: Colors.black87),
                              ),
                            ),
                          ],
                        ),
                      )),
                )
              ],
            )));
  }
}
