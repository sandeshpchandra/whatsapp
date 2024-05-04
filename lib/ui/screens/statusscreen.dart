import 'package:flutter/material.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({super.key});

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F5F3),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Updates",
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge
                        ?.copyWith(color: Colors.black),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 45,
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
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Text(
                        "Status",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90),
                            color: Colors.grey),
                        height: 30,
                        width: 30,
                        child: Center(
                          child: Icon(
                            Icons.camera_enhance,
                            size: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90),
                            color: Colors.grey),
                        height: 30,
                        width: 30,
                        child: Center(
                          child: Icon(
                            Icons.edit,
                            size: 20,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Text(
                        "Channels",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90),
                            color: Colors.grey),
                        height: 30,
                        width: 30,
                        child: Center(
                          child: Icon(
                            Icons.add,
                            size: 20,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage("assets/model4.jpg"),
              ),
              title: Text("LUMINAR TECHNOLAB - I"),
              subtitle:
                  Text("https://youtu.be/T6Inu47dWos?\nsi=oFgexgZ1UwkiO4wR"),
              trailing: Text("07/02/24"),
            ),
            Divider(
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Status",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Spacer(),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "See All",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 180,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        StatusWidget(
                          image: "assets/model4.jpg",
                          label: "India Today",
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        StatusWidget(
                            label: "Whatsapp", image: "assets/gridimage1.jpeg"),
                        SizedBox(
                          width: 10,
                        ),
                        StatusWidget(
                            label: "No One Cares",
                            image: "assets/gridimage2.jpeg"),
                        SizedBox(
                          width: 10,
                        ),
                        StatusWidget(
                            label: "ABP News", image: "assets/gridimage3.jpeg"),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 1,
            )
          ],
        ),
      ),
    );
  }
}

class StatusWidget extends StatelessWidget {
  final String label;
  final String image;
  const StatusWidget({
    super.key,
    required this.label,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage(image),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              label,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            MaterialButton(
              elevation: 0,
              onPressed: () {},
              height: 30,
              minWidth: 100,
              color: Color(0xFFD8FDD2),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: Text(
                "Follow",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 63, 173, 67)),
              ),
            )
          ]),
    );
  }
}
