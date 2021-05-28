import 'package:catalog/models/catalog.dart';

class CartModel {
  CatalogModels _justcatalog;
//store all the elements id
  final List<int> _itemid = [];
  CatalogModels get catalog => _justcatalog;
  set catalog(CatalogModels newjustcatalogmodels) {
    assert(newjustcatalogmodels != null);
    _justcatalog = newjustcatalogmodels;
  }

  //get items in the cart
  List<Item> get items =>
      _itemid.map((id) => _justcatalog.getById(id)).toList();

  //gettotal price
  num get totalprice =>
      items.fold(0, (total, current) => total + current.price);

  //add items
  void add(Item items) {
    _itemid.add(items.id);
  }

  //remove items
  void remove(Item items) {
    _itemid.remove(items.id);
  }
}
