import 'package:flutter/material.dart';

class Foldercard extends StatelessWidget {
  double widthScreen;
  Foldercard({
    super.key,
    required this.widthScreen,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: widthScreen * 0.7,
        height: 90,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 235, 240, 252),
            borderRadius: BorderRadius.circular(25)),
        child: const Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, bottom: 25, right: 10),
              child: ImageIcon(
                color: Color.fromARGB(
                  255,
                  9,
                  59,
                  127,
                ),
                size: 45,
                AssetImage('assets/folder-outline.png'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dribble shorts',
                    style: TextStyle(
                        color: Color.fromARGB(
                          255,
                          9,
                          59,
                          127,
                        ),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Dribble shorts',
                    style: TextStyle(
                        color: Color.fromARGB(
                          255,
                          9,
                          59,
                          127,
                        ),
                        fontSize: 10,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 50,
                    height: 30,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 4,
                          top: 2,
                          child: CircleAvatar(
                            radius: 9,
                            backgroundImage: AssetImage('assets/download.jpeg'),
                          ),
                        ),
                        Positioned(
                          right: 5,
                          top: 2,
                          child: CircleAvatar(
                            radius: 9,
                            backgroundImage:
                                AssetImage('assets/download (1).jpeg'),
                          ),
                        ),
                        Positioned(
                          left: 15,
                          child: CircleAvatar(
                            radius: 10,
                            backgroundImage: AssetImage('assets/download.jpeg'),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
