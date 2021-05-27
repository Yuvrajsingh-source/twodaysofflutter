import 'package:catalog/models/catalog.dart';
import 'package:catalog/pages/cart_page.dart';

import 'package:catalog/pages/home_details_page.dart';
import 'package:catalog/pages/login_page.dart';
import 'package:catalog/widget/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

import 'package:velocity_x/velocity_x.dart';

import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
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
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          child: FloatingActionButton(
            backgroundColor:
                context.theme.floatingActionButtonTheme.backgroundColor,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Cartpage()));
            },
            child: Icon(CupertinoIcons.cart),
          ),
        ),
        backgroundColor: context.theme.scaffoldBackgroundColor,
        body: SafeArea(
            child: Container(
          padding: Vx.m20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
              if (catalogModels.items != null && catalogModels.items.isNotEmpty)
                Cataloglist().expand()
              else
                Center(child: CircularProgressIndicator()).expand(),
            ],
          ),
        )),
      ),
    );
  }
}

class drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Anlitiqs App".text.xl4.bold.color(context.theme.accentColor).make(),
        Padding(
          padding: const EdgeInsets.only(bottom: 4),
          child: "Digital services"
              .text
              .color(context.theme.accentColor)
              .xl
              .make(),
        ),
      ],
    );
  }
}

class Cataloglist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: catalogModels.items.length,
      itemBuilder: (context, index) {
        final catalog = catalogModels.items[index];
        return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Homedetail(
                            catalog: catalog,
                          )));
            },
            child: Catalogitem(catalog: catalog));
      },
    );
  }
}

class Catalogitem extends StatelessWidget {
  final Item catalog;
  const Catalogitem({Key key, @required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Container(
            child: Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image)
                  .box
                  .p8
                  .rounded
                  .color(context.theme.canvasColor)
                  .make()
                  .pOnly(left: 10, top: 10, bottom: 10)
                  .w32(context),
            ),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                ),
                child: Text(catalog.name,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Colors.black)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  catalog.desc,
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "\$${catalog.price}",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(StadiumBorder())),
                    onPressed: () {},
                    child: Text("Add to Cart"),
                  ),
                ],
              )
            ],
          )),
        ],
      ),
    ).color(context.theme.cardColor).rounded.square(145).make().py12();
  }
}
