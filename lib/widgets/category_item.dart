import 'package:flutter/material.dart';

class CategorieItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  const CategorieItem(
      {super.key, required this.id, required this.title, required this.color});

  void selectCategory(BuildContext context) {
    // Navigator.of(context).push(MaterialPageRoute(builder: (_) {
    //   return Meals(id, title);
    // }));
    Navigator.of(context).pushNamed(
      '/meals',
      arguments: {'id': id, 'title': title},
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color.withOpacity(0.7), color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
