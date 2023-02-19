import 'package:flutter/cupertino.dart';

enum ChatMessageType { text, audio, image, video }

enum MessageStatues { not_sent, not_view, viewed }

class ChatMessage {
  final String text;
  final ChatMessageType messageType;
  final MessageStatues messageStatues;
  final bool isSender;
  final String? sender;
  final String? senderImage;
  final String? imageUrl;

  ChatMessage({
    this.text = '',
    required this.messageType,
    required this.messageStatues,
    required this.isSender,
    this.sender,
    this.senderImage,
    this.imageUrl,
  });
}

class ChatMessages with ChangeNotifier {
  List<ChatMessage> chatMessages = [
    ChatMessage(
      text: "Hi Eslam",
      messageType: ChatMessageType.text,
      messageStatues: MessageStatues.viewed,
      isSender: false,
    ),
    ChatMessage(
      text: "Hi Mustapha, How are you",
      messageType: ChatMessageType.text,
      messageStatues: MessageStatues.viewed,
      isSender: true,
    ),
    ChatMessage(
      text: "I am good alhamdullilah",
      messageType: ChatMessageType.text,
      messageStatues: MessageStatues.viewed,
      isSender: false,
    ),
    ChatMessage(
      text: "Happy to hear that",
      messageType: ChatMessageType.text,
      messageStatues: MessageStatues.viewed,
      isSender: true,
    ),
    ChatMessage(
      text: "Do you have any updates ?!",
      messageType: ChatMessageType.text,
      messageStatues: MessageStatues.viewed,
      isSender: false,
    ),
    ChatMessage(
      text: "No I dont have any updates yet",
      messageType: ChatMessageType.text,
      messageStatues: MessageStatues.not_view,
      isSender: true,
    ),
  ];

  void addMessage(ChatMessage message){
    chatMessages.add(message);
    notifyListeners();
  }

  List<ChatMessage> get getMessageList => chatMessages;
}
