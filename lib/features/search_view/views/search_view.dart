import 'package:flutter/material.dart';
import 'package:movies_app/features/search_view/widgets/custom_text_feild_search.dart';
import '../widgets/local_movies.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          CustomSearch(),
          LocalMovies(),
          // MovieDesign(),
        ],
      ),
    );
  }
}
