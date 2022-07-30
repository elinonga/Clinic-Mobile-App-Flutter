import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
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
      body: ListView(children: const [
        // Row (Salamu + Notification + Avatar)
        TopBar(),
        SizedBox(height: 30),

        // Search bar
        SearchBar(),
        SizedBox(height: 30),

        // My Appointments
      ]),
    );
  }
}
