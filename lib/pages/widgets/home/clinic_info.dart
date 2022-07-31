import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ClinicInfo extends StatelessWidget {
  const ClinicInfo({
    Key? key,
    required this.picha,
    required this.name,
    required this.schedule,
    required this.address,
    required this.upana,
  }) : super(key: key);

  final String picha;
  final String name;
  final String schedule;
  final String address;
  final double upana;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.white.withOpacity(0.4),
          spreadRadius: 5,
          blurRadius: 8,
        )
      ]),

      // Stack of children (Image + Cotainer ya Clinic Info + Favorite Icon)
      child: Stack(
        children: [
          // 🎊

          // BG Image
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.asset(
              picha,
              fit: BoxFit.fill,
            ),
          ),

          // Container ya Clinic Info
          Positioned(
            bottom: 0,
            child: Container(
              alignment: Alignment.bottomCenter,
              height: 100,
              width: upana,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
              ),

              // 🎊

              // COlumn of Info
              child: Padding(
                padding: const EdgeInsets.all(9.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // 🎊

                      // Hospital's name
                      Text(
                        name,
                        style: TextStyle(
                            color: HexColor("34354e"),
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      SizedBox(height: 5),

                      // Time
                      Row(
                        children: [
                          // 🎊

                          // Time Icon
                          Icon(
                            Icons.access_time_filled,
                            color: HexColor("787994"),
                          ),
                          const SizedBox(width: 10),

                          // Text
                          Text(
                            schedule,
                            style: TextStyle(
                                color: HexColor("787994"),
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),

                      // Location
                      Row(
                        children: [
                          // 🎊

                          // Location Icon
                          Icon(
                            Icons.location_on,
                            color: HexColor("787994"),
                          ),
                          const SizedBox(width: 10),

                          // Text
                          Text(
                            address,
                            style: TextStyle(
                                color: HexColor("787994"),
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                        ],
                      ),

                      // 🎊
                    ]),
              ),
            ),
          ),

          // Favorite Icon
          Positioned(
            top: 10,
            right: 10,
            child: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: HexColor("bab9b8").withOpacity(0.5)),
              child: const Icon(
                Icons.favorite_border,
                color: Colors.black,
                size: 20,
              ),
            ),
          )
        ],
      ),
    );
  }
}
