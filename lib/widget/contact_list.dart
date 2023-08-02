import 'package:flutter/material.dart';
import 'package:responsive_design/utils/colors.dart';
import 'package:responsive_design/utils/info.dart';

class ContactList extends StatelessWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: info.length,
        itemBuilder: (context, index) => InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: ListTile(
              title: Text(info[index]["name"].toString(),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: const TextStyle(fontSize: 18)),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Text(info[index]["message"].toString(),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: const TextStyle(fontSize: 15)),
              ),
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                  info[index]['profilePic'].toString(),
                ),
              ),
              trailing: Text(info[index]["time"].toString(),
                  style: const TextStyle(fontSize: 15)),
            ),
          ),
        ),
        separatorBuilder: (context, index) =>
            Divider(color: dividerColor, indent: 85),
      ),
    );
  }
}
