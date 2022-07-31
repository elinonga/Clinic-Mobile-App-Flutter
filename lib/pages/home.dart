import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:medical_app/pages/widgets/home/appointment.dart';
import 'package:medical_app/pages/widgets/home/headers.dart';
import 'package:medical_app/pages/widgets/home/search.dart';
import 'package:medical_app/pages/widgets/home/small_container.dart';
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
        const TopBar(),
        const SizedBox(height: 30),

        // Search bar
        const SearchBar(),
        const SizedBox(height: 30),

        // Appointment Header
        const HeaderRow(
          header_name: "My Appointment",
        ),
        const SizedBox(height: 15),

        // Appointmnet Container
        const AppointmentContainer(),
        const SizedBox(height: 30),

        //Categories Header
        const HeaderRow(header_name: "Categories"),
        const SizedBox(height: 15),

        // Horizontal Sliders Doctors near me
        Container(
          height: 50,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SmallContainerSlider(
                color1: HexColor("008ef7"),
                color2: HexColor("01b1f7"),
                text: "Near me",
                textColor: Colors.white,
              ),
              SmallContainerSlider(
                color1: HexColor("ffffff"),
                color2: HexColor("ffffff"),
                text: "Dental Clinic",
                textColor: Colors.black,
              ),
              SmallContainerSlider(
                color1: HexColor("ffffff"),
                color2: HexColor("ffffff"),
                text: "Pediatric",
                textColor: Colors.black,
              ),
              SmallContainerSlider(
                color1: HexColor("ffffff"),
                color2: HexColor("ffffff"),
                text: "Cardiologist",
                textColor: Colors.black,
              ),

              // Add space at the end of the last container
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
