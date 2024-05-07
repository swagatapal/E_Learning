import 'package:flutter/material.dart';

import '../../../Core/Utils/Helper/app_colors.dart';

class ChatSection extends StatelessWidget {
  final String image;
  final String name;
  final String message;
  final String time;
  final int messageCount;

  const ChatSection(
      {super.key,
      required this.image,
      required this.name,
      required this.message,
      required this.time,
      required this.messageCount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            child: Text(image),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      time,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(message),
              ],
            ),
          ),
          if (messageCount > 0)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.teal[300],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                messageCount.toString(),
                style: const TextStyle(color: Colors.white),
              ),
            ),
        ],
      ),
    );
  }
}
