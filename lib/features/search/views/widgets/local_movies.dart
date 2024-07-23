import 'package:flutter/material.dart';
import '../../../../core/config/constants.dart';

class LocalMovies extends StatelessWidget {
  const LocalMovies({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: Constants.mediaQuery.height * 0.3,
      ),
      child: const Icon(
        Icons.local_movies,
        color: Color(0XFFB5B4B4),
        size: 130,
      ),
    );
  }
}
