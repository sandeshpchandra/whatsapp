import 'package:flutter/material.dart';
import 'package:whatsapp_project/ui/screens/messagescreen.dart';

import 'indexpage.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Chats",
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge
                    ?.copyWith(color: Colors.black),
              ),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 40,
                      child: TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10)),
                          disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10)),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10)),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          label: Text(
                            "search",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.align_horizontal_center,
                        color: Colors.grey,
                      ))
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.separated(
            padding: EdgeInsets.symmetric(vertical: 20),
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(
              indent: 90,
            ),
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) => ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MessageScreen()));
              },
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(discovery[index]["image"]),
              ),
              title: Text(
                discovery[index]["title"],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Row(children: [
                Icon(
                  Icons.check,
                  size: 20,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(discovery[index]["subtitle"])
              ]),
              trailing: Text(
                discovery[index]["time"],
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
        )
      ],
    );
  }
}
