import 'package:flutter/material.dart';
import 'package:shopapp/providers/cart.dart';
import 'package:shopapp/providers/orders.dart';
import 'package:shopapp/screens/cart_overview.dart';
import './screens/products_overview.dart';
import './screens/product_details.dart';
import 'package:provider/provider.dart';
import './providers/products_provider.dart';
import './screens/orders_overview.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Products(),
        ),
        ChangeNotifierProvider(
          create: (context) => Cart(),
        ),
        ChangeNotifierProvider(
          create: (context) => Orders(),
        )
      ],
      child: MaterialApp(
        title: 'Shop App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          //colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          //primarySwatch: Colors.blue,
          primaryColor: Colors.purple,
          secondaryHeaderColor: Colors.deepOrange,

          fontFamily: 'Lato',
          useMaterial3: true,
        ),
        //home: const MyHomePage(title: 'Shop App'),
        home: ProductsOverView(),
        //initialRoute: '/',
        routes: {
          ProductDetails.routeName: (context) => const ProductDetails(),
          CartOverview.routeName: (context) => const CartOverview(),
          OrdersOverView.routeName: (context) => const OrdersOverView(),
        },
      ),
    );
  }
}
