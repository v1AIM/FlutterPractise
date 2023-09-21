import 'package:flutter/material.dart';
import 'package:testing/widgets/category_item.dart';
import 'package:testing/dummy_data.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(25),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: DUMMY_CATEGORIES
          .map((e) => CategorieItem(id: e.id, title: e.title, color: e.color))
          .toList(),
    );
    // children: DUMMY_CATEGORIES.map((e) {
    //   return Container(
    //     padding: const EdgeInsets.all(15),
    //     child: Text(e.title),
    //     decoration: BoxDecoration(
    //       gradient: LinearGradient(
    //           colors: [e.color.withOpacity(0.7), e.color],
    //           begin: Alignment.topLeft,
    //           end: Alignment.bottomRight),
    //       borderRadius: BorderRadius.circular(15),
    //     ),
    //   );
    // }).toList()));
  }
}
