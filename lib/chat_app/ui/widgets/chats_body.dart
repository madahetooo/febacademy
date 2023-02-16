import 'package:febacademy/chat_app/model/chats_model.dart';
import 'package:febacademy/chat_app/ui/message_screen.dart';
import 'package:febacademy/chat_app/ui/widgets/chats_card_widget.dart';
import 'package:febacademy/chat_app/ui/widgets/fill_outline_button.dart';
import 'package:flutter/material.dart';

class ChatsBody extends StatefulWidget {
  const ChatsBody({Key? key}) : super(key: key);

  @override
  State<ChatsBody> createState() => _ChatsBodyState();
}

class _ChatsBodyState extends State<ChatsBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          color: Colors.green,
          child: Row(
            children: [
              FillOutlineButton(
                isFilled: true,
                text: "Recent Messages",
                press: () {},
              ),
              SizedBox(
                width: 20,
              ),
              FillOutlineButton(
                isFilled: false,
                text: "Active",
                press: () {},
              ),
            ],
          ),
        ),
        Expanded(
            child: ListView.builder(
                itemCount: chatsData.length,
                itemBuilder: (context, index) => ChatsCard(
                      chats: chatsData[index],
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MessageScreen()));
                      },
                    )))
      ],
    ));
  }
}
