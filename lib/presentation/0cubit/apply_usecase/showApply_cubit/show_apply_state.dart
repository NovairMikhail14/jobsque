part of 'show_apply_cubit.dart';

@immutable
abstract class ShowApplyState {}

class ShowApplyInitial extends ShowApplyState {}
class ShowApplyLoading extends ShowApplyState {}
class  ShowApplySucess extends ShowApplyState {}
class  ShowApplyFailed extends ShowApplyState {}