import 'package:flutter/material.dart';

class EachCartItem extends StatelessWidget {
//  final String id;
//  final String title;
//  final double price;
//  final String quantity;
//
//  CartItem(this.id, this.title, this.price, this.quantity);
  final cartItem;

  EachCartItem(this.cartItem);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 4,
      ),
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.all(5),
        child: ListTile(
          leading: CircleAvatar(
            child: FittedBox(
              fit: BoxFit.cover,
              child: Text(
                '\$${cartItem.price}',
                textAlign: TextAlign.center,
              ),
            ),
          ),
          title: Text(cartItem.title),
          subtitle: Text('Total: \$${cartItem.price * cartItem.quantity}'),
          trailing: Text('x ${cartItem.quantity}'),
        ),
      ),
    );
  }
}
