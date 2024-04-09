import 'package:flutter/material.dart';
import 'package:movies_app/features/browse_view/widgets/browse_movies_builder.dart';
import 'package:movies_app/features/movie_details_view/widgets/custom_app_bar.dart';

class BrowsedMoviesView extends StatelessWidget {
  const BrowsedMoviesView({super.key});

  @override
  Widget build(BuildContext context) {
    var title = ModalRoute.of(context)!.settings.arguments as String;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            CustomAppBar(title: title),
            const SizedBox(height: 16),
            const BrowseMoviesBuilder(),
          ],
        ),
      ),
    );
  }
}
