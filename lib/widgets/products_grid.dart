import 'package:flutter/material.dart';
import '../providers/products_provider.dart';
import './product_item.dart';
import 'package:provider/provider.dart';

class productsGrid extends StatelessWidget {
  final bool showFavs;

  const productsGrid(this.showFavs, {super.key});

  @override
  Widget build(BuildContext context) {
    final products_data = Provider.of<Products>(context);
    //final ProductsData = context.read<Products>();
    final products =
        showFavs ? products_data.favoriteItems : products_data.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2, // width / height
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) => ChangeNotifierProvider.value(
        //create: (context) => products[index],
        value: products[index],
        child: ProductItem(
            // id: products[index].id,
            // title: products[index].title,
            // imageUrl: products[index].imageUrl,
            ),
      ),
    );
  }
}
