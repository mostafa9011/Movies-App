import 'package:flutter/material.dart';
import 'package:movies_app/core/config/constants.dart';
import '../widgets/suggested_movie.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SuggestedMovie(),
          const Spacer(flex: 1),
          Container(
            width: Constants.mediaQuery.width,
            height: Constants.mediaQuery.height * 0.22,
            decoration: const BoxDecoration(
              color: Color(0XFF282A28),
            ),
          ),
          const Spacer(flex: 1),
          Container(
            width: Constants.mediaQuery.width,
            height: Constants.mediaQuery.height * 0.25,
            decoration: const BoxDecoration(
              color: Color(0XFF282A28),
            ),
          ),
          const Spacer(flex: 1),
        ],
      ),
    );
  }
}
