import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'SearchView',
        style: TextStyle(
          fontSize: 22,
          color: Colors.amber,
        ),
      ),
    );
  }
}
