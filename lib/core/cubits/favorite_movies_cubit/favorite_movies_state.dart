part of 'favorite_movies_cubit.dart';

sealed class FavoriteMoviesState {}

final class FavoriteMoviesInitial extends FavoriteMoviesState {}

final class FavoriteMoviesLoading extends FavoriteMoviesState {}

final class FavoriteMoviesSuccess extends FavoriteMoviesState {}
