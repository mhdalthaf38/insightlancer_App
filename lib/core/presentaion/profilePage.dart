import 'package:flutter/material.dart';
import 'package:insightlancer_app/widgets/FolderCard.dart';
import 'package:insightlancer_app/widgets/ProfileCard.dart';
import 'package:insightlancer_app/widgets/customtitlewidget.dart';

class ProfilePage extends StatelessWidget {
  String headname;

  String titlejob;
  String profileimage;
  ProfilePage(
      {required this.headname,
      required this.titlejob,
      required this.profileimage});
  @override
  Widget build(BuildContext context) {
    List<String> titleText = [
      'E-commerse Application',
      'Food Project',
      'E-Book Project',
      'E-Learning App'
    ];
    List<String> subtitleText = [
      'E-commerse Application',
      'Food Project',
      'E-Book Project',
      'E-Learning App'
    ];
    List<Icon> icont = [
      const Icon(
        Icons.shopping_bag_outlined,
        size: 30,
        color: Color.fromARGB(
          255,
          9,
          59,
          127,
        ),
      ),
      const Icon(
        Icons.fastfood_outlined,
        size: 30,
        color: Color.fromARGB(
          255,
          9,
          59,
          127,
        ),
      ),
      const Icon(
        Icons.menu_book_rounded,
        size: 30,
        color: Color.fromARGB(
          255,
          9,
          59,
          127,
        ),
      ),
      const Icon(
        Icons.star_outline_rounded,
        size: 30,
        color: Color.fromARGB(
          255,
          9,
          59,
          127,
        ),
      )
    ];
    final widthScreen = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              ProfileCard(
                  profileName: headname,
                  profimg: profileimage,
                  jobtitle: titlejob),
              CustomTitleWidget(titleText: 'Folder'),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Foldercard(
                        widthScreen: widthScreen,
                      ),
                    ),
                    Foldercard(
                      widthScreen: widthScreen,
                    ),
                    Foldercard(
                      widthScreen: widthScreen,
                    ),
                    Foldercard(
                      widthScreen: widthScreen,
                    ),
                  ],
                ),
              ),
              CustomTitleWidget(titleText: 'My Team'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: subtitleText.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: CircleAvatar(
                            radius: 30,
                            backgroundColor:
                                const Color.fromARGB(255, 235, 240, 252),
                            child: icont[index]),
                        title: Text(
                          titleText[index],
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(
                                255,
                                9,
                                59,
                                127,
                              )),
                        ),
                        subtitle: Text(subtitleText[index]),
                        trailing: const SizedBox(
                          width: 70,
                          height: 30,
                          child: Stack(
                            children: [
                              Positioned(
                                right: 5,
                                child: CircleAvatar(
                                  radius: 15,
                                  backgroundImage:
                                      AssetImage('assets/download (1).jpeg'),
                                ),
                              ),
                              Positioned(
                                left: 15,
                                child: CircleAvatar(
                                  radius: 15,
                                  backgroundImage:
                                      AssetImage('assets/download.jpeg'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
