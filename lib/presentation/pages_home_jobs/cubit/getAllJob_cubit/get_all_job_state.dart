part of 'get_all_job_cubit.dart';

@immutable
abstract class GetAllJobState {}

class GetAllJobInitial extends GetAllJobState {}
class  GetAllJobSuccess extends GetAllJobState {}
class  GetAllJobFailed extends GetAllJobState {}
