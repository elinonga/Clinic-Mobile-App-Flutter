import 'package:flutter/material.dart';

class SmallContainerSlider extends StatelessWidget {
  const SmallContainerSlider({
    Key? key,
    required this.color1,
    required this.color2,
    required this.text,
    required this.textColor,
  }) : super(key: key);

  final Color color1;
  final Color color2;
  final String text;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 15,
      ),
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              color1,
              color2,
            ],
          ),
          borderRadius: const BorderRadius.all(Radius.circular(7)),
          border: Border.all(color: Colors.grey.withOpacity(0.5))),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
            child: Text(
          text,
          style: TextStyle(
              color: textColor, fontSize: 15, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
