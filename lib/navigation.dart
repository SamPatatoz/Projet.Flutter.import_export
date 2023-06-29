import 'package:flutter/material.dart';
import 'message.dart';
import 'notification.dart';
import 'profile.dart';
import 'add.dart';

class NavigationHelper {
  static void openMessageScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MessageScreen()),
    );
  }

  static void openNotificationScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const NotificationScreen()),
    );
  }

  static void openProfileScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ProfileScreen()),
    );
  }

  static void openAddScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const AddScreen()),
    );
  }
}
