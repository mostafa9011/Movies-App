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
