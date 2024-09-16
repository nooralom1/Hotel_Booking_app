class NotificationListModel {
  List<Notifications>? notifications;

  NotificationListModel({this.notifications});

  NotificationListModel.fromJson(Map<String, dynamic> json) {
    if (json['notifications'] != null) {
      notifications = <Notifications>[];
      json['notifications'].forEach((v) {
        notifications!.add(Notifications.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (notifications != null) {
      data['notifications'] = notifications!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Notifications {
  String? notification;

  Notifications({this.notification});

  Notifications.fromJson(Map<String, dynamic> json) {
    notification = json['notification'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['notification'] = notification;
    return data;
  }
}
