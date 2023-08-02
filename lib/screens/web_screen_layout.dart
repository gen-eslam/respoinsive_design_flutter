import 'package:flutter/material.dart';
import 'package:responsive_design/widget/contact_list.dart';
import 'package:responsive_design/widget/web_search_bar.dart';

import '../widget/chat_list.dart';
import '../widget/web_chat_app_bar.dart';
import '../widget/web_profile_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Flexible(
            flex: 1,
            child: Column(
              children: [
                WebProfileBar(),
                WebSearchBar(),
                Expanded(child: ContactList()),
              ],
            ),
          ),
          Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/backgroundImage.png"))),
                child: Column(
                  children: [
                    WebChatAppBar(),
                    Expanded(child: ChatList()),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
