import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/features/search/manager/search_cubit.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextField(
        onChanged: (value) {
          BlocProvider.of<SearchMoviesCubit>(context).getSearchMovies(
            query: value,
          );
        },
        cursorColor: const Color(0XFF48CFAD),
        cursorWidth: 1,
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0XFF514F4F),
          contentPadding: const EdgeInsets.all(8),
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.white,
            size: 20,
          ),
          hintText: 'search',
          hintStyle: const TextStyle(color: Colors.grey),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(24),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(24),
          ),
        ),
      ),
    );
  }
}
