import 'package:flutter/material.dart';

class Thirdrow extends StatelessWidget {
  final image;

  const Thirdrow({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 140,
          width: 90,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(image),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Positioned(
          top: 110,
          bottom: -20,
          right: 28,
          left: 30,
          child: CircleAvatar(
            backgroundImage: NetworkImage(image),
          ),
        ),
      ],
    );
  }
}
