import 'package:flutter/material.dart';
import 'package:responsive_design/utils/colors.dart';

class WebProfileBar extends StatelessWidget {
  const WebProfileBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: webAppBarColor,
        border: Border(
          right: BorderSide(color: webAppBarColor),
        ),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
            ),
          ),
          Spacer(),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.comment,
                color: Colors.grey,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Colors.grey,
              ))
        ],
      ),
    );
  }
}
