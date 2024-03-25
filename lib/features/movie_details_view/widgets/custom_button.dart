import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:movies_app/core/config/constants.dart';
import 'package:movies_app/core/config/models/movie_model.dart';
import 'package:movies_app/core/config/services/api_service.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        side: const BorderSide(color: Colors.grey),
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: () async {
        List<MovieModel>moviesList=await ApiService().getNewRealeases();
        log(moviesList[1].title);
      },
      child: Text(
        'Action',
        style: Constants.theme.textTheme.bodyMedium,
      ),
    );
  }
}
