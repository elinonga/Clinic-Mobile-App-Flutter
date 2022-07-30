import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("ffffff"),
      body: ListView(children: [
        Container(
          margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Column
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Hello"),
                    Text(
                      "Mr Elinonga 👋",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ]),

              // Row (Notification + Avatar)
              Row(
                children: [
                  Stack(children: [
                    // Notification
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: HexColor("e8f2f9")),
                      child: const Icon(
                        Icons.notifications,
                        color: Colors.blue,
                      ),
                    ),

                    // Red dot
                    Positioned(
                      right: 10,
                      child: Container(
                        width: 11,
                        height: 11,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.red),
                      ),
                    )
                  ]),

                  const SizedBox(
                    width: 10,
                  ),

                  // Avatar
                  const CircleAvatar(
                    radius: 25,
                    foregroundImage: AssetImage("assets/images/black.jpeg"),
                  )
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
