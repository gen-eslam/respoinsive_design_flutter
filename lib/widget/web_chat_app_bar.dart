import 'package:flutter/material.dart';
import 'package:responsive_design/utils/colors.dart';
import 'package:responsive_design/utils/info.dart';

class WebChatAppBar extends StatelessWidget {
  const WebChatAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      padding: EdgeInsets.all(10),
      color: webAppBarColor,
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
            ),
            radius: 30,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.01,
          ),
          Text(
            info[0]['name'].toString(),
            style: TextStyle(fontSize: 18),
          ),
          Spacer(),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search_rounded,
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
