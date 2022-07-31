import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HeaderRow extends StatelessWidget {
  const HeaderRow({
    Key? key,
    required this.header_name,
  }) : super(key: key);

  final String header_name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15, right: 15),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          header_name,
          style: TextStyle(
              color: HexColor("005bac"),
              fontWeight: FontWeight.bold,
              fontSize: 16),
        ),
        Text(
          "See all",
          style: TextStyle(
              color: HexColor("f6a20f"),
              fontWeight: FontWeight.bold,
              fontSize: 14),
        ),
      ]),
    );
  }
}
