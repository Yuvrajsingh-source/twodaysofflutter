import 'dart:convert';

import 'package:flutter/cupertino.dart';

class CatalogModels {
  static List<Item> jems;
  Item getById(int id) => jems.firstWhere((element) => element.id == id);
}

class Item {
  final int id;
  final String name;
  final String desc;
  final String longdesc;
  final num price;
  final String color;
  final String image;

  Item({
    this.id,
    this.name,
    this.desc,
    this.longdesc,
    this.price,
    this.color,
    this.image,
  });

  Item copyWith({
    int id,
    String name,
    String desc,
    String longdesc,
    num price,
    String color,
    String image,
  }) {
    return Item(
      id: id ?? this.id,
      name: name ?? this.name,
      desc: desc ?? this.desc,
      longdesc: longdesc ?? this.longdesc,
      price: price ?? this.price,
      color: color ?? this.color,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'desc': desc,
      'longdesc': longdesc,
      'price': price,
      'color': color,
      'image': image,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'],
      name: map['name'],
      desc: map['desc'],
      longdesc: map['longdesc'],
      price: map['price'],
      color: map['color'],
      image: map['image'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Item(id: $id, name: $name, desc: $desc,longdesc: $longdesc, price: $price, color: $color, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Item &&
        other.id == id &&
        other.name == name &&
        other.desc == desc &&
        other.longdesc == longdesc &&
        other.price == price &&
        other.color == color &&
        other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        desc.hashCode ^
        longdesc.hashCode ^
        price.hashCode ^
        color.hashCode ^
        image.hashCode;
  }
}
