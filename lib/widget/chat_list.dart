import 'package:flutter/material.dart';
import 'package:responsive_design/utils/info.dart';
import 'package:responsive_design/widget/my_message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: messages.length,
        itemBuilder: (context, index) {
          if (messages[index]['isMe'] == true) {
            return MyMessageCard(
              message: messages[index]['text'].toString(),
              date: messages[index]['time'].toString(),
            );
          }
          return MyMessageCard(
            message: messages[index]['text'].toString(),
            date: messages[index]['time'].toString(),
          );
        });
  }
}
