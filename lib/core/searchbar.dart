import 'package:flutter/material.dart';

class Searchbar extends StatelessWidget {
  const Searchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
      child: SearchBar(
        shadowColor: WidgetStateColor.transparent,
        leading: Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.search),
        ),
        hintText: 'Search',
        hintStyle: WidgetStatePropertyAll(TextStyle(
            color: Color.fromARGB(
          255,
          9,
          59,
          127,
        ))),
      ),
    );
  }
}
