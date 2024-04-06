import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/config/models/movie_model.dart';
import '../../../core/config/services/cloud_firestore.dart';
import '../../../core/cubits/favorite_movies_cubit/favorite_movies_cubit.dart';
import '../../../core/widgets/favorite_bookmark.dart';
import '../../../core/widgets/unfavorite_bookmark.dart';
import '../../../main.dart';

class IsFavoriteWidget extends StatefulWidget {
  const IsFavoriteWidget({
    super.key,
    required this.movie,
  });

  final MovieModel movie;

  @override
  State<IsFavoriteWidget> createState() => _IsFavoriteWidgetState();
}

class _IsFavoriteWidgetState extends State<IsFavoriteWidget> {
  var vm =
      BlocProvider.of<FavoriteMoviesCubit>(navigatorKey.currentState!.context);
  late bool isFavorite;
  @override
  void initState() {
    isFavorite = vm.favoriteMoviesIdsList.contains(widget.movie.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: isFavorite == true
          ? const FavoriteBookmark()
          : const UnFavoriteBookmark(),
      onTap: () async {
        isFavorite == true
            ? {
                log('tapped! on favorite'),
                await vm.deletMovieFromFav(cloudId: widget.movie.cloudId!),
                log('delete ${widget.movie.title} from favorite'),
                // vm.watchedListMovies(),
              }
            : {
                log('tapped! on unfavorite'),
                await FireStoreService().addMovieToFavorite(widget.movie),
                // log(widget.movie.cloudId!),
                log('add ${widget.movie.title} to favorite'),
                // vm.watchedListMovies(),
              };

        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
