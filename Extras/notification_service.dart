import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

/// how to use 
/// just create an object of class
/// NotificationService newnotification = NotificationService();
/// and initialize it in initstate
/// void initState() { newnotification.initializeNotifications();}
/// and call the showNotification and scheduleNotification functions where you want to show notification


/// set notification details
var androidPlatformChannelSpecifics = AndroidNotificationDetails(
  'alarm_app',
  'alarm_app',
  importance: Importance.max,
  priority: Priority.high,
  playSound: true,
  icon: 'logoring',
  largeIcon: DrawableResourceAndroidBitmap('logo'),
);
var platformChannelSpecifics =
    NotificationDetails(android: androidPlatformChannelSpecifics);

///

/// Calculate the delay in seconds from the current time to the selected time
int calculateDelayInSeconds(int selectedHour, int selectedMinute) {
  final now = DateTime.now();
  final selectedTime = DateTime(
    now.year,
    now.month,
    now.day,
    selectedHour,
    selectedMinute,
  );

  if (selectedTime.isBefore(now)) {
    // If the selected time is before the current time, schedule for tomorrow
    selectedTime.add(Duration(days: 1));
  }

  final delay = selectedTime.difference(now);
  return delay.inSeconds;
}

///

class NotificationService {
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  void initializeNotifications() async {
    final initializationSettingsAndroid = AndroidInitializationSettings('logo');
    final initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
    );

    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
    );

    // Initialize time zones
    tz.initializeTimeZones();
  }

  // Create a notification channel (Android-specific)
  void _createNotificationChannel() async {
    final androidNotificationChannel = AndroidNotificationChannel(
      'alarm_app_channel', // Channel ID
      'Alarm App Channel', // Channel Name
      importance: Importance.max,
      playSound: true,
    );

    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(androidNotificationChannel);
  }

  //show notification with sound and vibration and icon along with  description passed as parameter
  void showNotification(
      {String title = "alarm", required String description}) async {
    // Create the notification channel (Android-specific)
    _createNotificationChannel();

    // Show a notification with sound and vibration
    await flutterLocalNotificationsPlugin.show(
      0,
      title,
      description,
      platformChannelSpecifics,
      payload: 'alarm_app',
    );
  }

  // Schedule a notification to go off after 10 seconds
  void scheduleNotification(
      {int delay_sec = 10,
      String discription = "This is a scheduled notification "}) async {
    // Create the notification channel (Android-specific)
    _createNotificationChannel();

    // Schedule a notification to appear after 10 seconds
    await flutterLocalNotificationsPlugin.zonedSchedule(
      0,
      'Alarm App',
      discription,
      tz.TZDateTime.now(tz.local).add(Duration(seconds: delay_sec)),
      platformChannelSpecifics,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
    );
  }
}
