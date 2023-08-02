import 'package:flutter/material.dart';

import '../utils/colors.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: const BoxDecoration(
        // color: webAppBarColor,
        border: Border(
          bottom: BorderSide(color: dividerColor),
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: searchBarColor,
          hintText: 'Search or start new chat',
          hintStyle: TextStyle(fontSize: 14),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none),
          prefixIcon: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
              Icons.search,
              size: 20,
            ),
          ),
        ),
      ),
    );
  }
}
