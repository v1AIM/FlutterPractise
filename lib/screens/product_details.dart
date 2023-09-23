import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  // final String title;
  const ProductDetails({super.key});
  static const routeName = '/product-details';
  @override
  Widget build(BuildContext context) {
    final productId =
        ModalRoute.of(context)?.settings.arguments as String; // is the ID
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
