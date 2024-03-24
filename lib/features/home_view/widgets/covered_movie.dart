import 'package:flutter/material.dart';

import '../../../core/config/constants.dart';

class CoveredMovie extends StatelessWidget {
  const CoveredMovie({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Constants.mediaQuery.width,
      height: Constants.mediaQuery.height * 0.30,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: Constants.mediaQuery.width,
            height: Constants.mediaQuery.height * 0.22,
            decoration: const BoxDecoration(
              color: Colors.green,
              image: DecorationImage(
                image: AssetImage('assets/images/Image1.png'),
                fit: BoxFit.fitWidth,
              ),
            ),
            child: const Icon(
              Icons.play_circle,
              color: Colors.white,
              size: 55,
            ),
          ),
          Row(
            children: [
              SizedBox(width: Constants.mediaQuery.width * 0.40),
              Expanded(
                child: Text(
                  overflow: TextOverflow.ellipsis,
                  'Dora and the lost city of gold',
                  style: Constants.theme.textTheme.titleMedium,
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(width: Constants.mediaQuery.width * 0.40),
              Text(
                '2019  PG-13  2h 7m',
                style: Constants.theme.textTheme.bodyMedium,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
