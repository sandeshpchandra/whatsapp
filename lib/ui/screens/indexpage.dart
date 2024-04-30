import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'callscreen.dart';
import 'chatscreen.dart';
import 'settingsscreen.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  int selectedIndex = 3;
  static List<Widget> screens = [
    Container(
      color: Colors.red,
      child: Text(
        "index 1",
        style: TextStyle(color: Colors.white),
      ),
    ),
    CallScreen(),
    Container(
      color: Colors.black,
      child: Text(
        "index 3",
        style: TextStyle(color: Colors.white),
      ),
    ),
    ChatScreen(),
    SettingsScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: GNav(
            backgroundColor: Colors.white,
            activeColor: Colors.black,
            padding: EdgeInsets.all(10),
            gap: 5,
            iconSize: 30,
            tabs: const [
              GButton(
                icon: Icons.donut_large_sharp,
                text: "Updates",
                iconColor: Colors.grey,
              ),
              GButton(
                icon: Icons.phone,
                text: "Calls",
                iconColor: Colors.grey,
              ),
              GButton(
                icon: Icons.groups,
                text: "Communities",
                iconColor: Colors.grey,
              ),
              GButton(
                icon: Icons.chat,
                text: "Chats ",
                iconColor: Colors.grey,
              ),
              GButton(
                icon: Icons.settings,
                text: "Settings",
                iconColor: Colors.grey,
              ),
            ],
            selectedIndex: selectedIndex,
            onTabChange: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
          ),
        ),
      ),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.more_horiz_rounded,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.camera_alt_rounded,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xFF24AB64)),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: screens[selectedIndex],
    );
  }
}

List<Map<String, dynamic>> discovery = [
  {
    "image": "assets/model4.jpg",
    "title": "Sandesh",
    "subtitle": "Hello",
    "time": "10.36 AM"
  },
  {
    "image": "assets/gridimage.jpg",
    "title": "Sandra",
    "subtitle": "Hi",
    "time": "10.38 AM"
  },
  {
    "image": "assets/gridimage1.jpeg",
    "title": "Ajuu",
    "subtitle": "Daa",
    "time": "10.40 AM"
  },
  {
    "image": "assets/gridimage2.jpeg",
    "title": "Akash",
    "subtitle": "Dey",
    "time": "10.42 AM"
  },
  {
    "image": "assets/gridimage3.jpeg",
    "title": "Jishnu",
    "subtitle": "ooi",
    "time": "10.44 AM"
  },
  {
    "image": "assets/gridimage4.jpeg",
    "title": "Himma",
    "subtitle": "Mona",
    "time": "10.46 AM"
  },
  {
    "image": "assets/gridimage5.jpeg",
    "title": "Vandu Mowl",
    "subtitle": "mwthee",
    "time": "10.48 AM"
  },
  {
    "image": "assets/gridimage6.jpeg",
    "title": "Amma",
    "subtitle": "mowne",
    "time": "10.50 AM"
  },
  {
    "image": "assets/gridimage7.jpeg",
    "title": "Vyshu",
    "subtitle": "Daa",
    "time": "10.52 AM"
  },
  {
    "image": "assets/gridimage8.jpeg",
    "title": "Jui",
    "subtitle": "hubby",
    "time": "10.54 AM"
  },
];
