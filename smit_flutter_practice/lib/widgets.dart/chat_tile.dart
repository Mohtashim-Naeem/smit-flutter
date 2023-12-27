import 'package:flutter/material.dart';

class CustomChatTile extends StatelessWidget {
  final String user_image;
  final String name;
  final String message;
  final String time;

  const CustomChatTile(
      {super.key,
      required this.user_image,
      required this.name,
      required this.message,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(backgroundImage: NetworkImage(user_image)),
          title: Text(name),
          subtitle: Text(message),
          trailing: Text(time),
        ),
        Divider()
      ],
    );
  }
}
