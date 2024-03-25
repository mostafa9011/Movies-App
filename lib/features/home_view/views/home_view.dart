import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movies_app/features/home_view/widgets/carousel_slider_list.dart';
import 'package:movies_app/features/home_view/widgets/new_releases.dart';
import 'package:movies_app/features/home_view/widgets/recomended_movies_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          SizedBox(
            // height: 200,
            child: CarouselSliderList(),
          ),
          Spacer(flex: 1),
          NewReleases(),
          Spacer(flex: 1),
          RecomendedMoviesList(title: 'Recomended'),
          Spacer(flex: 1),
        ],
      ),
    );
  }
}
