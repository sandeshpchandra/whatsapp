import 'package:flutter/material.dart';
import 'package:whatsapp_project/ui/screens/settingsscreen.dart';

class CommunitiesScreen extends StatefulWidget {
  const CommunitiesScreen({super.key});

  @override
  State<CommunitiesScreen> createState() => _CommunitiesScreenState();
}

class _CommunitiesScreenState extends State<CommunitiesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F5F3),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Communities",
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge
                    ?.copyWith(color: Colors.black),
              ),
              SizedBox(
                height: 10,
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
                                      borderRadius: BorderRadius.circular(10),
                                      color:
                                          Color.fromARGB(255, 194, 193, 193)),
                                  child: Center(
                                      child: Icon(Icons.group_add_outlined))),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "New Community",
                                    style:
                                        Theme.of(context).textTheme.titleLarge,
                                  ),
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
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.grey,
                                radius: 20,
                                backgroundImage:
                                    AssetImage("assets/model4.jpg"),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Trend Shopping Hub",
                                style: Theme.of(context).textTheme.titleLarge,
                              )
                            ],
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.grey,
                                radius: 20,
                                child: Center(
                                  child: Icon(
                                    Icons.notifications,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                'New group "Trend Shopping Hub \n 2" added',
                                style: Theme.of(context).textTheme.titleMedium,
                              )
                            ],
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.grey,
                                radius: 20,
                                backgroundImage:
                                    AssetImage("assets/gridimage8.jpeg"),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                'New group "Trend Shopping Hub \n 2" added',
                                style: Theme.of(context).textTheme.titleMedium,
                              )
                            ],
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          Row(
                            children: [
                              Text(
                                "See All",
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              Spacer(),
                              Icon(Icons.arrow_right)
                            ],
                          )
                        ],
                      ),
                    ),
                  )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
