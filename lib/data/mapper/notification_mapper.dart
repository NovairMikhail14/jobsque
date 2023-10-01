import 'package:jobsque/app/constants.dart';
import 'package:jobsque/app/extensions.dart';

import '../../domain/model/notification_model.dart';
import '../responses/notification_response/notification_response.dart';



extension NotificationResponseMapper on NotificationResponse? {
  Notification toDomain() {
    return Notification(
      this?.id.orZero() ?? Constants.zero,
      this?.userId.orEmpty() ?? Constants.empty,
      this?.compId.orEmpty() ?? Constants.empty,
      this?.compName.orEmpty() ?? Constants.empty,
      this?.userName.orEmpty() ?? Constants.empty,
      this?.lastMassage.orEmpty() ?? Constants.empty,
      this?.createdAt.orDefultDate() ?? Constants.defultDate,
      this?.updatedAt.orDefultDate() ?? Constants.defultDate,
    );
  }
}

extension GetNotificationResponseMapper on GetNotificationResponse? {
  GetNotification toDomain() {
    return GetNotification(this?.notificationResponse.toDomain());
  }
}
