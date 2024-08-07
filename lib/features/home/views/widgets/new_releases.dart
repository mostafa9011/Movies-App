import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movies_app/core/config/constants.dart';
import 'package:movies_app/features/home/views/widgets/new_releases_movies_builder.dart';

class NewReleases extends StatelessWidget {
  const NewReleases({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Constants.mediaQuery.width,
      height: Constants.mediaQuery.height * 0.24,
      decoration: const BoxDecoration(
        color: Color(0XFF282A28),
      ),
      child: Container(
        margin: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  textAlign: TextAlign.start,
                  'New Releases',
                  style: Constants.theme.textTheme.titleMedium,
                ),
              ],
            ),
            const SizedBox(height: 6),
            const NewReleasesMoviesBuilder(),
          ],
        ),
      ),
    );
  }
}
