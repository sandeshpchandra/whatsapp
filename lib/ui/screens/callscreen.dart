import 'package:flutter/material.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({super.key});

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF6F5F3),
        body: ListView(
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            children: [
              Text(
                "Calls",
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge
                    ?.copyWith(color: Colors.black),
              ),
              SizedBox(
                height: 40,
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
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
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(90),
                                      color:
                                          Color.fromARGB(255, 194, 193, 193)),
                                  child: Center(
                                      child: Icon(Icons.ios_share_outlined))),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Create Call Link",
                                    style:
                                        Theme.of(context).textTheme.titleLarge,
                                  ),
                                  Text("share a link for your WhatsApp call")
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Recent",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: Colors.white),
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(
                    indent: 90,
                    thickness: 1,
                  ),
                  itemBuilder: (BuildContext context, int index) => ListTile(
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
                        Icons.call_made,
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
              ))
            ]));
  }
}

List<Map<String, dynamic>> discovery = [
  {
    "image": "assets/model4.jpg",
    "title": "Sandesh",
    "subtitle": "Incoming",
    "time": "10.36 AM"
  },
  {
    "image": "assets/gridimage.jpg",
    "title": "Sandra",
    "subtitle": "Incoming",
    "time": "10.38 AM"
  },
  {
    "image": "assets/gridimage1.jpeg",
    "title": "Ajuu",
    "subtitle": "Incoming",
    "time": "10.40 AM"
  },
  {
    "image": "assets/gridimage2.jpeg",
    "title": "Akash",
    "subtitle": "Incoming",
    "time": "Yesterday"
  },
  {
    "image": "assets/gridimage3.jpeg",
    "title": "Jishnu",
    "subtitle": "Incoming",
    "time": "Yesterday"
  },
  {
    "image": "assets/gridimage4.jpeg",
    "title": "Himma",
    "subtitle": "Outgoing",
    "time": "Yesterday"
  },
  {
    "image": "assets/gridimage5.jpeg",
    "title": "Vandu Mowl",
    "subtitle": "Outgoing",
    "time": "06/01/2024"
  },
  {
    "image": "assets/gridimage6.jpeg",
    "title": "Amma",
    "subtitle": "Outgoing",
    "time": "09/03/2024"
  },
  {
    "image": "assets/gridimage7.jpeg",
    "title": "Vyshu",
    "subtitle": "Outgoing",
    "time": "22/03/2024"
  },
  {
    "image": "assets/gridimage8.jpeg",
    "title": "Jui",
    "subtitle": "Outgoing",
    "time": "08/05/2024"
  },
];
