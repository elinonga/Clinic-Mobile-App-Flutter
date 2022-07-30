import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:medical_app/pages/widgets/home/headers.dart';
import 'package:medical_app/pages/widgets/home/search.dart';
import 'package:medical_app/pages/widgets/home/topbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("f3f8fb"),
      body: ListView(children: [
        // Row (Salamu + Notification + Avatar)
        TopBar(),
        SizedBox(height: 30),

        // Search bar
        SearchBar(),
        SizedBox(height: 30),

        // Appointment Header
        HeaderRow(),
        SizedBox(height: 15),

        // Appointmnet Container
        Container(
          margin: const EdgeInsets.only(left: 15, right: 15),
          decoration: BoxDecoration(
              color: HexColor("018BF7"),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  HexColor("0269c3"),
                  HexColor("01c0f7"),
                ],
              ),
              borderRadius: const BorderRadius.all(Radius.circular(15))),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              // 🎊

              // Doctor's info
              Container(
                margin: const EdgeInsets.only(left: 12, right: 12),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // 🎊

                      Row(
                        children: [
                          // Avatar
                          const CircleAvatar(
                            radius: 25,
                            foregroundImage:
                                AssetImage("assets/images/doc.jpg"),
                          ),

                          const SizedBox(
                            width: 10,
                          ),

                          // Column (Name + Role)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Dr David Mezza",
                                style: TextStyle(
                                    color: HexColor("e0f3fe"),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                              Text(
                                "General Practitioner",
                                style: TextStyle(
                                    color: HexColor("b2e1fd"),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                            ],
                          ),
                        ],
                      ),

                      // "See more" icon
                      Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            border: Border.all(color: HexColor("80dbfb")),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                          child: const Icon(
                            Icons.read_more,
                            color: Colors.white,
                            size: 20,
                          )),

                      // 🎊
                    ]),
              ),

              const SizedBox(
                height: 12,
              ),

              // Availability
              Container(
                margin: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: HexColor("41c4f9"),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        HexColor("41a9f9"),
                        HexColor("41c8f9"),
                      ],
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(15))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
                    // 🎊

                    // Time
                    Row(
                      children: [
                        // 🎊

                        // Time Icon
                        const Icon(
                          Icons.access_time_filled,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 10),

                        // Text
                        Text(
                          "January 12 at 09:00 AM - 10:00 AM",
                          style: TextStyle(
                              color: HexColor("e7f5f3"),
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                      ],
                    ),

                    const SizedBox(height: 10),

                    // Location
                    Row(
                      children: [
                        // 🎊

                        // Location Icon
                        const Icon(
                          Icons.location_on,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 10),

                        // Text
                        Text(
                          "Mayo Clinic, 4907 Karen Lane",
                          style: TextStyle(
                              color: HexColor("e7f5f3"),
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                      ],
                    ),
                  ]),
                ),
              ),

              // END
            ]),
          ),
        )
      ]),
    );
  }
}
