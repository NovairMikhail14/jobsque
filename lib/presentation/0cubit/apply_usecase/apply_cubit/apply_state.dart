part of 'apply_cubit.dart';

@immutable
abstract class ApplyState {}

class ApplyInitial extends ApplyState {}
class ApplyLoading extends ApplyState {}
class  ApplySucess extends ApplyState {}
class  ApplyFailed extends ApplyState {}