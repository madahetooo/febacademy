import 'package:febacademy/chat_app/model/chat_message.dart';
import 'package:flutter/material.dart';

class MessageImage extends StatelessWidget {
  const MessageImage({
    Key? key,
    this.message,
    required this.index,
  }) : super(key: key);

  final ChatMessage? message;
  final int index;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.50,
      child: ClipRect(
        child: Image.network(
          message!.imageUrl!,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
