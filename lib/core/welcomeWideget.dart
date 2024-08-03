import 'package:flutter/material.dart';

class Welcomewideget extends StatelessWidget {
  String profileName;
  Welcomewideget({super.key, required this.profileName});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(
            'Hi ${profileName}!',
            style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(
                  255,
                  9,
                  59,
                  127,
                )),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text('Good Morning'),
        )
      ],
    );
  }
}
