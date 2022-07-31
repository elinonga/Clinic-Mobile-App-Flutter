import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:medical_app/pages/widgets/home/appointment.dart';
import 'package:medical_app/pages/widgets/home/clinic_info.dart';
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
        SizedBox(
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
        const SizedBox(height: 15),

        // Clinic Containers Sliders
        SizedBox(
          height: 190,
          width: double.infinity,
          child: ListView(scrollDirection: Axis.horizontal, children: const [
            ClinicInfo(
              picha: "assets/images/clinics/doc1.jpeg",
              name: "Elinonga Clinic",
              schedule: "08:00 AM - 6:00 PM",
              address: "1150 Kinondoni Street, DSM",
              upana: 285,
            ),
            ClinicInfo(
              picha: "assets/images/clinics/doc5.jpeg",
              name: "Mezza Clinic",
              schedule: "09:00 AM - 7:00 PM",
              address: "345 Ilala Street, Mbeya",
              upana: 290,
            ),
            ClinicInfo(
              picha: "assets/images/clinics/doc2.jpeg",
              name: "David Clinic",
              schedule: "10:00 AM - 8:00 PM",
              address: "980 Temeke Street, Kagera",
              upana: 285,
            ),
            ClinicInfo(
              picha: "assets/images/clinics/doc3.jpeg",
              name: "Kunonga Clinic",
              schedule: "08:00 AM - 5:00 PM",
              address: "657 Ubungo Street, Ulaya",
              upana: 340,
            ),
            ClinicInfo(
              picha: "assets/images/clinics/doc4.png",
              name: "Nyekanyeka Clinic",
              schedule: "07:30 AM - 11:30 PM",
              address: "885 Soweto Street, Sauzi",
              upana: 335,
            ),

            // Space at the end of the last container
            SizedBox(
              width: 15,
            ),

            //
          ]),
        ),
        const SizedBox(
          height: 30,
        ),

        // To be continued
      ]),
    );
  }
}
