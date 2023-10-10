part of 'job_id_cubit.dart';

@immutable
abstract class JobIdState {}

class JobIdInitial extends JobIdState {}
class  JobIdSuccess extends JobIdState {
  Job job;
  int index;
  JobIdSuccess(this.job,this.index);
}
class  JobIdFailed extends JobIdState {}