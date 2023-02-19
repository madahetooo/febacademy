import 'package:febacademy/chat_app/ui/message_screen/components/chat_input_field.dart';
import 'package:flutter/material.dart';
class MessageBody extends StatefulWidget {
  const MessageBody({Key? key}) : super(key: key);

  @override
  State<MessageBody> createState() => _MessageBodyState();
}

class _MessageBodyState extends State<MessageBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Message Body"),
          ChatInputField(),
        ],
      ),
    );
  }
}
