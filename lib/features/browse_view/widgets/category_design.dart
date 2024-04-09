import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/config/views_route_name.dart';
import 'package:movies_app/core/cubits/browse_movies_cubit/browse_cubit.dart';
import '../../../core/config/constants.dart';

class CategoryDesign extends StatelessWidget {
  const CategoryDesign({
    super.key,
    required this.title,
    required this.image,
    required this.genresId,
  });
  final String title;
  final String image;
  final String genresId;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<BrowseMoviesCubit>(context).getBrowseMovies(
          genresId: genresId,
        );
        Navigator.pushNamed(
          context,
          ViewsRouteName.browseMoviesView,
          arguments: title,
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.4),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              title,
              style: Constants.theme.textTheme.titleMedium!.copyWith(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
