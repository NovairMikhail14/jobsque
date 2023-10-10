part of 'add_portofolio_cubit.dart';

@immutable
abstract class AddPortofolioState {}

class AddPortofolioInitial extends AddPortofolioState {}
class AddPortofolioLoading extends AddPortofolioState {}
class AddPortofolioSuccess extends AddPortofolioState {}
class AddPortofoliofailed extends AddPortofolioState {}