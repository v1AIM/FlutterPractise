import 'package:flutter/material.dart';

import '../widgets/products_grid.dart';

class ProductsOverView extends StatelessWidget {
  ProductsOverView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shop App'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: productsGrid(),
    );
  }
}
