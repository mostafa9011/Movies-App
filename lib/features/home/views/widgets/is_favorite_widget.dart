import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/main.dart';
import '../../../../core/config/models/movie_model.dart';
import '../../../../core/services/cloud_firestore.dart';
import '../../../watched_list/manager/favorite_movies_cubit.dart';
import '../../../../core/widgets/favorite_bookmark.dart';
import '../../../../core/widgets/unfavorite_bookmark.dart';

class IsFavoriteWidget extends StatefulWidget {
  const IsFavoriteWidget({super.key, required this.movie});
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
    return BlocBuilder<FavoriteMoviesCubit, FavoriteMoviesState>(
      builder: (context, state) {
        return GestureDetector(
          child: isFavorite
              ? const FavoriteBookmark()
              : const UnFavoriteBookmark(),
          onTap: () async {
            isFavorite == true
                ? {
                    setState(() {
                      isFavorite = !isFavorite;
                    }),
                    await FireStoreService()
                        .deleteMovieFromFavorite(widget.movie.cloudId!),
                    log('delete ${widget.movie.title} from favorite'),
                  }
                : {
                    setState(() {
                      isFavorite = !isFavorite;
                    }),
                    await FireStoreService().addMovieToFavorite(widget.movie),
                    log('add ${widget.movie.title} to favorite'),
                  };
            // setState(() {
            //   isFavorite = !isFavorite;
            // });
          },
        );
      },
    );
  }
}
 

/*
class IsFavoriteWidget extends StatelessWidget {
  const IsFavoriteWidget({super.key, required this.movie});
  final MovieModel movie;

  @override
  Widget build(BuildContext context) {
    var vm = BlocProvider.of<FavoriteMoviesCubit>(context);

    return BlocConsumer<FavoriteMoviesCubit, FavoriteMoviesState>(
      listener: (context, state) {},
      builder: (context, state) {
        return GestureDetector(
            child: vm.isFavoriteWidget(movie),
            onTap: () {
              vm.onTap(movie);
            });
      },
    );
  }
}
* */