import 'package:flutter/material.dart';
import '../../../../core/config/constants.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key, required this.currentIndex});
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    var homeLayoutCubit = Constants.homeLayoutCubit;
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: homeLayoutCubit.onTapped,
      showUnselectedLabels: true,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: 'HOME',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
          ),
          label: 'SEARCH',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.movie,
          ),
          label: 'BROWSE',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.collections_bookmark,
          ),
          label: 'WATCHED LIST',
        ),
      ],
    );
  }
}
