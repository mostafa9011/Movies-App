import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/config/constants.dart';
import 'package:movies_app/core/cubits/home_layout_cubit/home_layout_cubit.dart';
import 'package:movies_app/core/cubits/home_layout_cubit/home_layout_states.dart';
import 'package:movies_app/features/home_layout_view/widgets/custom_bottom_navigation_bar.dart';

class HomeLayoutView extends StatelessWidget {
  const HomeLayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    var homeLayoutCubit = Constants.homeLayoutCubit;
    return BlocBuilder<HomeLayoutCubit, HomeLayoutStates>(
      builder: (context, state) {
        return Scaffold(
          body: homeLayoutCubit.views[homeLayoutCubit.selectedIndex],
          bottomNavigationBar: CustomBottomNavigationBar(
            currentIndex: homeLayoutCubit.selectedIndex,
          ),
        );
      },
    );
  }
}

/*
class HomeLayoutView extends StatelessWidget {
  const HomeLayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    
    var vm = BlocProvider.of<FavoriteMoviesCubit>(context);
    var homeLayoutCubit = Constants.homeLayoutCubit;
    return BlocBuilder<HomeLayoutCubit, HomeLayoutStates>(
      builder: (context, state) {
        return Scaffold(
          body: StreamBuilder<QuerySnapshot<MovieModel>>(
              stream: FireStoreService().getStreamFavMovies(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(
                      backgroundColor: Constants.goldenColor,
                      strokeWidth: 1,
                    ),
                  );
                } else {
                  List<MovieModel> favoriteMoviesList =
                      snapshot.data?.docs.map((e) => e.data()).toList() ?? [];

                  vm.getFavoriteMoviesList(favoriteMoviesList);

                  return homeLayoutCubit.views[homeLayoutCubit.selectedIndex];
                }
              }),
          bottomNavigationBar: CustomBottomNavigationBar(
            currentIndex: homeLayoutCubit.selectedIndex,
          ),
        );
      },
    );
  }
}
*/