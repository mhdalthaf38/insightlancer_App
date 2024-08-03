import 'package:flutter/material.dart';

class CustomTitleWidget extends StatelessWidget {
  String titleText;
  CustomTitleWidget({required this.titleText});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(
            titleText,
            style: const TextStyle(
                color: Color.fromARGB(
                  255,
                  9,
                  59,
                  127,
                ),
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(right: 30),
          child: Text(
            "view all",
            style: TextStyle(
                color: Color.fromARGB(
              255,
              9,
              59,
              127,
            )),
          ),
        )
      ],
    );
  }
}
