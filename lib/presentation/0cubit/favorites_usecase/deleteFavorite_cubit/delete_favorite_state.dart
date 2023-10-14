part of 'delete_favorite_cubit.dart';

@immutable
abstract class DeleteFavoriteState {}

class DeleteFavoriteInitial extends DeleteFavoriteState {}
class DeleteFavoriteLoading extends DeleteFavoriteState {}
class DeleteFavoriteSucess extends DeleteFavoriteState {}
class DeleteFavoriteFailed extends DeleteFavoriteState {}