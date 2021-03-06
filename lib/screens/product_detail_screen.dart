import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/products.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    final productData = Provider.of<Products>(context, listen: false);
    final foundProduct = productData.findById(productId);
    return Scaffold(
      appBar: AppBar(
        title: Text(foundProduct.title),
      ),
    );
  }
}
