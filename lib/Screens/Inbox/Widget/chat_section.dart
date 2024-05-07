import 'package:flutter/material.dart';

class ChatSection extends StatelessWidget {
  const ChatSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.brown.shade800,
          child: const Text('AH'),
        ),
        Row(
          children: [],
        ),
      ],
    );
  }
}
