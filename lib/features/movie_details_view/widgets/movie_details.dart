import 'package:flutter/material.dart';
import '../../../core/config/constants.dart';
import '../../home_view/widgets/poster_movie.dart';
import 'custom_button.dart';

class MovieDetails extends StatelessWidget {
  const MovieDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Row(
        children: [
          const PosterMovie(),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    CustomButton(),
                    SizedBox(width: 12),
                    CustomButton(),
                  ],
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: Constants.mediaQuery.width * 0.6,
                  child: Text(
                    'Having spent most of her life exploring the jungle, nothing could prepare Dora for her most dangerous adventure yet — high school. ',
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: Constants.theme.textTheme.bodyMedium,
                  ),
                ),
                const SizedBox(height: 8),
                const Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Constants.goldenColor,
                      size: 30,
                    ),
                    Text(
                      '1.8',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
