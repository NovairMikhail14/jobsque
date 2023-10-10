part of 'delete_portofolio_cubit.dart';

@immutable
abstract class DeletePortofolioState {}

class DeletePortofolioInitial extends DeletePortofolioState {}
class DeletePortofolioLoading extends DeletePortofolioState {}
class DeletePortofolioSuccess extends DeletePortofolioState {}
class DeletePortofoliofailed extends DeletePortofolioState {}