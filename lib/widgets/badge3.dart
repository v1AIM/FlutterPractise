import 'package:flutter/material.dart';

class Badge3 extends StatelessWidget {
  const Badge3({
    Key? key,
    required this.child,
    required this.value,
    this.color,
  }) : super(key: key);

  final Widget child;
  final String value;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        child,
        Positioned(
          right: 1,
          top: 1,
          child: Container(
            padding: const EdgeInsets.all(2.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: color != null
                  ? color
                  : Theme.of(context).secondaryHeaderColor,
            ),
            constraints: const BoxConstraints(
              minWidth: 16,
              minHeight: 16,
            ),
            child: Text(
              value,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 10,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
