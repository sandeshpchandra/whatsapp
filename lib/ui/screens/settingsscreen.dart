import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F5F3),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Settings",
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
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.align_horizontal_center,
                        color: Colors.grey,
                      ))
                ],
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
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Container(
                                    height: 70,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(90)),
                                    child: Image.asset(
                                      "assets/model4.jpg",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Sandesh P Chandran",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge,
                                    ),
                                    Text("we were bor to be real,....")
                                  ],
                                ),
                                Spacer(),
                                IconButton(
                                    onPressed: () {}, icon: Icon(Icons.qr_code))
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: GestureDetector(
                              onTap: () {},
                              child: Row(
                                children: [
                                  Icon(Icons.emoji_emotions),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    "Avatar",
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  ),
                                  Spacer(),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.arrow_right))
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ))
                ],
              ),
              SizedBox(
                height: 30,
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
                          horizontal: 15, vertical: 10),
                      child: Column(children: [
                        SettingsWidget(
                          icon: Icons.broadcast_on_home,
                          icon1: Icons.arrow_right,
                          label: "Broadcast Lists",
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        SettingsWidget(
                          icon: Icons.star_border_outlined,
                          icon1: Icons.arrow_right,
                          label: "Starred Messages",
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        SettingsWidget(
                          icon: Icons.laptop_mac_outlined,
                          icon1: Icons.arrow_right,
                          label: "Linked Devices",
                        ),
                      ]),
                    ),
                  ))
                ],
              ),
              SizedBox(
                height: 30,
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
                          horizontal: 15, vertical: 10),
                      child: Column(children: [
                        SettingsWidget(
                          icon: Icons.key,
                          icon1: Icons.arrow_right,
                          label: " Account",
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        SettingsWidget(
                          icon: Icons.lock_outlined,
                          icon1: Icons.arrow_right,
                          label: "Privacy",
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        SettingsWidget(
                          icon: Icons.chat_bubble,
                          icon1: Icons.arrow_right,
                          label: "Chats",
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        SettingsWidget(
                          icon: Icons.notifications,
                          icon1: Icons.arrow_right,
                          label: "Notifications",
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        SettingsWidget(
                          icon: Icons.currency_rupee_rounded,
                          icon1: Icons.arrow_right,
                          label: "Payments",
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        SettingsWidget(
                            label: "Storage and Data",
                            icon: Icons.storage,
                            icon1: Icons.arrow_right)
                      ]),
                    ),
                  ))
                ],
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
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      child: Column(children: [
                        SettingsWidget(
                            label: "Help",
                            icon: Icons.info_outline,
                            icon1: Icons.arrow_right),
                        Divider(
                          thickness: 1,
                        ),
                        SettingsWidget(
                            label: "Tell a Friend",
                            icon: Icons.favorite_outline,
                            icon1: Icons.arrow_right)
                      ]),
                    ),
                  ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SettingsWidget extends StatelessWidget {
  final String label;
  final IconData icon;
  final IconData icon1;

  const SettingsWidget({
    super.key,
    required this.label,
    required this.icon,
    required this.icon1,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(
            width: 15,
          ),
          Text(
            label,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Spacer(),
          Icon(icon1)
        ],
      ),
    );
  }
}
