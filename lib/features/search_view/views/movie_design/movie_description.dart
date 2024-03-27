import 'package:flutter/material.dart';
import '../../../../core/config/constants.dart';

class MovieDescription extends StatelessWidget {
  const MovieDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 10, bottom: 5),
          width: Constants.mediaQuery.width * 0.5,
          child: Text(
            'Alita Battle Angel',
            style: Constants.theme.textTheme.bodyMedium!.copyWith(
              color: Colors.white,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 10, bottom: 5),
          child: Text(
            '2019',
            style: Constants.theme.textTheme.bodyMedium,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 10, bottom: 5),
          width: Constants.mediaQuery.width * 0.5,
          child: Text(
            'Rosa Salazar, Christoph Waltz',
            style: Constants.theme.textTheme.bodyMedium,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
