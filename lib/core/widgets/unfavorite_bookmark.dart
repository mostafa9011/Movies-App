import 'package:flutter/material.dart';

class UnSelectedBookmark extends StatelessWidget {
  const UnSelectedBookmark({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.center,
      children: [
        Icon(
          Icons.bookmark,
          size: 40,
          color: Color(0xff514f4f),
        ),
        Icon(
          Icons.add,
          color: Colors.white,
          size: 22,
        )
      ],
    );
  }
}