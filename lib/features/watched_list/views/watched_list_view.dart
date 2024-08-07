import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/features/watched_list/manager/favorite_movies_cubit.dart';
import 'package:movies_app/core/widgets/movie_design/movie_design.dart';
import '../../../core/config/constants.dart';

class WatchedListView extends StatelessWidget {
  const WatchedListView({super.key});

  @override
  Widget build(BuildContext context) {
    var vm = BlocProvider.of<FavoriteMoviesCubit>(context);
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 40,
              left: 22,
            ),
            child: Text(
              'Watched List',
              style: Constants.theme.textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ListView.builder(
              itemCount: vm.favoriteMoviesList.length,
              itemBuilder: (context, index) {
                return MovieDesign(
                  movie: vm.favoriteMoviesList[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
