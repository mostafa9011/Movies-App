import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/main.dart';

import '../cubits/home_layout_cubit/home_layout_cubit.dart';

class Constants {
  static var mediaQuery =
      MediaQuery.of(navigatorKey.currentState!.context).size;

  static var theme = Theme.of(navigatorKey.currentState!.context);

  static const Color goldenColor = Color(0XFFFFBB3B);

  static var homeLayoutCubit =
      BlocProvider.of<HomeLayoutCubit>(navigatorKey.currentState!.context);
}
