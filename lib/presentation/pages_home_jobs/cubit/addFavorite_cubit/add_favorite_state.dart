part of 'add_favorite_cubit.dart';

@immutable
abstract class AddFavoriteState {}

class AddFavoriteInitial extends AddFavoriteState {}

class AddFavoriteLoading extends AddFavoriteState {}

class AddFavoriteSucess extends AddFavoriteState {
  String? name;
  String? image;
  String? jobType;
  int? expired;
  AddFavoriteSucess(this.name, this.image, this.jobType, this.expired);
}

class AddFavoriteFailed extends AddFavoriteState {}
