class NotificationModel {
  final String? notificationImage;
  final String? notificationText;
  final String? notificationTime;

  NotificationModel({
    required this.notificationImage,
    required this.notificationText,
    required this.notificationTime,
  });

  factory NotificationModel.fromJson(Map<String, dynamic> json) {
    return NotificationModel(
      notificationImage: json['notificationImage'],
      notificationText: json['notificationText'],
      notificationTime: json['notificationTime'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'notificationImage': notificationImage,
      'notificationText': notificationText,
      'notificationTime': notificationTime,
    };
  }
}
