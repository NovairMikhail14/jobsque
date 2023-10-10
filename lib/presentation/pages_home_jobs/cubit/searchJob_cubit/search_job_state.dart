part of 'search_job_cubit.dart';

@immutable
abstract class SearchJobState {}

class SearchJobInitial extends SearchJobState {}
class  SearchJobSuccess extends SearchJobState {
  List<Job> jobList;
  SearchJobSuccess(this.jobList);
}
class  SearchJobFailed extends SearchJobState {}