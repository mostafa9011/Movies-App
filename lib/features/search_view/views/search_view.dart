import 'package:flutter/material.dart';
import 'package:movies_app/features/search_view/views/search_movies_builder.dart';
import 'package:movies_app/features/search_view/widgets/custom_text_feild_search.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          CustomSearch(),
          SearchMoviesBuilder(),
        ],
      ),
    );
  }
}
