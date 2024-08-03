import 'package:flutter/material.dart';
import 'package:insightlancer_app/core/WelcomContainer.dart';
import 'package:insightlancer_app/core/gridsection.dart';
import 'package:insightlancer_app/core/presentaion/profilePage.dart';
import 'package:insightlancer_app/core/searchbar.dart';
import 'package:insightlancer_app/core/welcomeWideget.dart';

import 'package:insightlancer_app/widgets/customtitlewidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
            padding: EdgeInsets.only(left: 30),
            child: ImageIcon(
              AssetImage('assets/apps.png'),
              color: Color.fromARGB(
                255,
                9,
                59,
                127,
              ),
            )),
        title: const Text(
          "Home",
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
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                color: Color.fromARGB(
                  255,
                  9,
                  59,
                  127,
                ),
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Welcomewideget(profileName: 'Jenifer'),
            const Searchbar(),
            const Welcomcontainer(),
            CustomTitleWidget(titleText: 'Ongoing Projects'),
            Gridsection()
          ],
        ),
      ),
      extendBody: true,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(5),
        child: SizedBox(
          height: 70,
          width: 70,
          child: Center(
            child: ElevatedButton(
                style: const ButtonStyle(
                    shadowColor: WidgetStatePropertyAll(Colors.black),
                    backgroundColor: WidgetStatePropertyAll(Color.fromARGB(
                      255,
                      9,
                      59,
                      127,
                    ))),
                onPressed: () {},
                child: const Center(
                  child: Icon(
                    color: Colors.white,
                    Icons.add,
                  ),
                )),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {},
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ImageIcon(
                      AssetImage('assets/home.png'),
                      color: Color.fromARGB(
                        255,
                        9,
                        59,
                        127,
                      ),
                    ),
                    Text(
                      'home',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(
                          255,
                          9,
                          59,
                          127,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: const Padding(
                padding: EdgeInsets.only(right: 40, top: 8),
                child: Column(
                  children: [
                    ImageIcon(
                      AssetImage('assets/checklist.png'),
                      color: Color.fromARGB(
                        255,
                        9,
                        59,
                        127,
                      ),
                    ),
                    Text(
                      'My Task',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(
                          255,
                          9,
                          59,
                          127,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: const Padding(
                padding: EdgeInsets.only(left: 40, top: 8),
                child: Column(
                  children: [
                    ImageIcon(
                      AssetImage('assets/verified.png'),
                      color: Color.fromARGB(
                        255,
                        9,
                        59,
                        127,
                      ),
                    ),
                    Text(
                      'Payment',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(
                          255,
                          9,
                          59,
                          127,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ImageIcon(
                      AssetImage('assets/account.png'),
                      color: Color.fromARGB(
                        255,
                        9,
                        59,
                        127,
                      ),
                    ),
                    Text(
                      'Profile',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(
                          255,
                          9,
                          59,
                          127,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
