import 'package:flutter/material.dart';
import 'package:movies_app/core/config/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      color: const Color(0xff1D1E1D),
      child: Row(
        children: [
          const SizedBox(width: 10),
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 25),
          Text(
            'Dora and the lost city of gold',
            style: Constants.theme.textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
