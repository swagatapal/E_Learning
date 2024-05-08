import 'package:e_learning/Core/Utils/CommonWidget/common_header.dart';
import 'package:e_learning/Screens/Notification/Widgets/notification_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          const CommonHeader(headingName: "Notification"),


        ],
      ),

    );
  }
}
