import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../../core/config/constants.dart';
import '../../../core/config/models/movie_model.dart';
import 'suggested_movie.dart';

class CarouselSliderList extends StatelessWidget {
  const CarouselSliderList({
    super.key,
    required this.moviesList,
  });
  final List<MovieModel> moviesList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: CarouselSlider.builder(
        itemCount: moviesList.length,
        itemBuilder: (context, index, realIndex) {
          return SuggestedMovie(
            movie: moviesList[index],
          );
        },
        options: CarouselOptions(
          height: Constants.mediaQuery.height * 0.30,
          // padEnds: false,
          autoPlay: true,
        ),
      ),
    );
  }
}
