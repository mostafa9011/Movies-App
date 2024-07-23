import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/features/home/views/home_view.dart';
import 'package:movies_app/features/search/views/search_view.dart';
import 'package:movies_app/features/watched_list/views/watched_list_view.dart';
import '../../browse/views/browse_view.dart';
import 'home_layout_states.dart';

class HomeLayoutCubit extends Cubit<HomeLayoutStates> {
  HomeLayoutCubit() : super(HomeLayoutInitial());
  int selectedIndex = 0;
  final List<Widget> views = const [
    HomeView(),
    SearchView(),
    BrowseVeiw(),
    WatchedListView(),
  ];
  void onTapped(int index) {
    selectedIndex = index;
    emit(ChangeState());
  }
}
