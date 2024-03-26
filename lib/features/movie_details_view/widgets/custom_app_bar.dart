import 'package:flutter/material.dart';
import 'package:movies_app/core/config/constants.dart';
import 'package:movies_app/core/config/views_route_name.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      color: const Color(0xff1D1E1D),
      child: Row(
        children: [
          const SizedBox(width: 10),
          IconButton(
            onPressed: () => Navigator.pushReplacementNamed(
              context,
              ViewsRouteName.homeLayoutView,
            ),
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 25),
          Text(
            title,
            style: Constants.theme.textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
