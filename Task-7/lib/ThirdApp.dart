import 'package:flutter/material.dart';
class Secondrow extends StatelessWidget {
  final String name;
  final color;
  final icon;
  const Secondrow({
    super.key,
    required this.name,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 30,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          icon,
          Text(name),
        ],
      ),
    );
  }
}