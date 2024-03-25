import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/features/home_view/widgets/suggested_movie.dart';

import '../../../core/config/constants.dart';

class CarouselSliderList extends StatelessWidget {
  const CarouselSliderList({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> suggestedMoviesList = const [
      SuggestedMovie(),
      SuggestedMovie(),
      SuggestedMovie(),
      SuggestedMovie(),
    ];
    return CarouselSlider.builder(
      itemCount: suggestedMoviesList.length, 
      itemBuilder: (context, index, realIndex) {
        return suggestedMoviesList[index];
      },
      options: CarouselOptions(
        height: Constants.mediaQuery.height * 0.30,
        // padEnds: false,
        autoPlay: true, 
      ),
    );
  }
}
