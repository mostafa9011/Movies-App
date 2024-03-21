import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/config/app_theme_manager.dart';
import 'package:movies_app/core/config/views_route_name.dart';
import 'package:movies_app/core/config/routes.dart';
import 'package:movies_app/core/cubits/home_layout_cubit/home_layout_cubit.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey();
void main() {
  runApp(const MoviesApp());
}

class MoviesApp extends StatelessWidget {
  const MoviesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeLayoutCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppThemeManager.lightTheme,
        navigatorKey: navigatorKey,
        initialRoute: ViewsRouteName.initial,
        onGenerateRoute: Routes.onGenerateRoutes,
      ),
    );
  }
}
