import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart.dart';

import '../widgets/cart_item.dart' as ci;

class CartOverview extends StatelessWidget {
  static const routeName = '/cart-overview';

  const CartOverview({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Cart'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(15),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Total',
                    style: TextStyle(fontSize: 20),
                  ),
                  Spacer(),
                  Chip(
                    label: Text(
                      '\$${cart.totalAmount}',
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Colors.purple,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('ORDER NOW'),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
                itemBuilder: (context, i) => ci.CartItem(
                    id: cart.items!.values.toList()[i].id,
                    productId: cart.items!.keys.toList()[i],
                    title: cart.items!.values.toList()[i].title,
                    quantity: cart.items!.values.toList()[i].quantity,
                    price: cart.items!.values.toList()[i].price),
                itemCount: cart.items!.length),
          )
        ],
      ),
    );
  }
}
