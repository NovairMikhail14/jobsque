part of 'get_notification_cubit.dart';

@immutable
abstract class GetNotificationState {}

class GetNotificationInitial extends GetNotificationState {}

class GetNotificationLoading extends GetNotificationState {}

class GetNotificationSucess extends GetNotificationState {
  String? userName;
  String? compName;
  String? lastMassage;
  GetNotificationSucess(
      this.userName,
      this.compName,
      this.lastMassage,
      );
}

class GetNotificationFailed extends GetNotificationState {}
