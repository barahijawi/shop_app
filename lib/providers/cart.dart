import 'package:flutter/cupertino.dart';

class CartItem {
  final String id;
  final String title;
  final int quantity;
  final double price;

  CartItem(
      {@required this.id,
      @required this.title,
      @required this.quantity,
      @required this.price});
}

class Cart with ChangeNotifier {
  Map<String, CartItem> _items = {};

  Map<String, CartItem> get items {
    return {..._items};
  }

  void addItem(
    String productId,
    double price,
    String title,
  ) {
    if (_items != null && _items.containsKey((productId))) {
      //the item already in the card , change quantity
      _items.update(
          productId,
          (currentCartItem) => CartItem(
              id: currentCartItem.id,
              title: currentCartItem.title,
              quantity: currentCartItem.quantity + 1,
              price: currentCartItem.price));
    } else {
      _items.putIfAbsent(
          productId,
          () => CartItem(
              id: DateTime.now().toString(),
              title: title,
              quantity: 1,
              price: price));
    }
    notifyListeners();
  }

  int get itemsCount {
    return _items == null ? 0 : _items.length;
  }
}
