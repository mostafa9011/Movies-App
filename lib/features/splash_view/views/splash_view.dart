import 'dart:async';

import 'package:flutter/material.dart';
import 'package:movies_app/core/config/app_theme_manager.dart';
import 'package:movies_app/core/config/views_route_name.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(
          context,
          ViewsRouteName.homeLayoutView,
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppThemeManager.lightTheme.scaffoldBackgroundColor,
        image: const DecorationImage(
          image: AssetImage(
            'assets/images/movies_splash.png',
          ),
        ),
      ),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
