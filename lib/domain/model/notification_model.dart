class Notification {
  int id;
  String userId;
  String compId;
  String compName;
  String userName;
  String lastMassage;
  DateTime createdAt;
  DateTime updatedAt;

  Notification(
    this.id,
    this.userId,
    this.compId,
    this.compName,
    this.userName,
    this.lastMassage,
    this.createdAt,
    this.updatedAt,
  );
}

class GetNotification {
  Notification? notificationResponse;
  GetNotification(this.notificationResponse);
}
