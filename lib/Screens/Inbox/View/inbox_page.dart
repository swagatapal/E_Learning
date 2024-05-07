import 'package:e_learning/Screens/Inbox/Widget/chat_section.dart';
import 'package:e_learning/core/utils/helper/app_colors.dart';
import 'package:flutter/material.dart';

class InboxPage extends StatefulWidget {
  const InboxPage({super.key});

  @override
  State<InboxPage> createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:
              const EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 10),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Inbox",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.onBackground,
                      fontSize: 21.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto'),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.transparent.withOpacity(0.1),
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                    ),
                    child: const Center(
                        child: Icon(
                      Icons.search_sharp,
                      color: AppColors.primaryButtonColor,
                      size: 30,
                    ))),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int index) {
                    return const ChatSection(
                      image: "assets/images/testImage2.png",
                      name: 'Daniel',
                      message: "Hello! Good Morning.",
                      time: "7:00 pm",
                      messageCount: 23,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
