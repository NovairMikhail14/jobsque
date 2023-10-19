part of 'show_all_favorite_cubit.dart';

@immutable
abstract class ShowAllFavoriteState {}

class ShowAllFavoriteInitial extends ShowAllFavoriteState {}

class ShowAllFavoriteLoading extends ShowAllFavoriteState {}

class ShowAllFavoriteSucess extends ShowAllFavoriteState {
List<User> listJob;
  ShowAllFavoriteSucess(this.listJob,);
}

class ShowAllFavoriteFailed extends ShowAllFavoriteState {}
