import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15, right: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(12.0)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 15,
              blurRadius: 70,
            )
          ]),
      child: TextFormField(
          decoration: const InputDecoration(
        prefixIcon: Icon(Icons.search),
        hintText: 'Seach a clinic or health issue',
        border: InputBorder.none,
      )),
    );
  }
}
