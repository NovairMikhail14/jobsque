part of 'show_apply_cubit.dart';

@immutable
abstract class ShowApplyState {}

class ShowApplyInitial extends ShowApplyState {}
class ShowApplyLoading extends ShowApplyState {}
class  ShowApplySuccess extends ShowApplyState {
  List<ApplyData> listApplyJob;
  ShowApplySuccess(this.listApplyJob);
}
class  ShowApplyFailed extends ShowApplyState {}