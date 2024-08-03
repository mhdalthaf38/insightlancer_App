import 'package:flutter/material.dart';

class Welcomcontainer extends StatelessWidget {
  const Welcomcontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 17),
      child: Container(
        height: 110,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
                width: 2,
                color: const Color.fromARGB(
                  255,
                  9,
                  59,
                  127,
                ))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              width: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 25),
                    child: Text(
                      'Welcome!',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(
                            255,
                            9,
                            59,
                            127,
                          )),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text("Let's schedule your projects"),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                width: 130,
                height: 220,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage('assets/file.png'))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
