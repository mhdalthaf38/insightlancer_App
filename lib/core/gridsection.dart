import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:insightlancer_app/core/presentaion/profilePage.dart';

import 'package:insightlancer_app/widgets/customgridcard.dart';

class Gridsection extends StatefulWidget {
  const Gridsection({super.key});

  @override
  State<Gridsection> createState() => _GridsectionState();
}

class _GridsectionState extends State<Gridsection> {
  List<String> Jobname = ['Mobile App', 'Dashbord', 'Banner', 'UI UX'];
  List<String> taskname = ['Mobile App', 'Dashbord', 'Banner', 'UI UX'];
  List<String> percent = ['80%', '40%', '60%', '90%'];
  List<double> percentnum = [0.8, 0.4, 0.6, 0.7];
  List<String> date = [
    'may,4,2023',
    'nov,31,2023',
    'april,4,2023',
    'may,11,2024'
  ];
  List icont = [
    Icons.table_view_rounded,
    Icons.dataset_outlined,
    Icons.design_services_rounded,
    Icons.branding_watermark
  ];
  List headname = [
    'Richard A.Bachmann',
    'Seydali Anees',
    'Akshay baiju',
    'Aditya'
  ];
  List titlejob = ['UI/UX', 'Master in Chali', 'Kaziveri', 'Flutter Queen'];
  List profimg = [
    'assets/profileAatar.jpg',
    'assets/seydali.jpg',
    'assets/akshay.jpg',
    'assets/aditya.jpg'
  ];
  Color? gridcolor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, top: 10),
      child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
          ),
          itemCount: Jobname.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                gridcolor = Color.fromARGB(255, 235, 240, 252);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProfilePage(
                            profileimage: profimg[index],
                            headname: headname[index],
                            titlejob: titlejob[index])));
              },
              child: Customgridcard(
                  Icont: icont[index],
                  percent: percentnum[index],
                  headText: Jobname[index],
                  subText: taskname[index],
                  date: date[index],
                  textPercent: percent[index]),
            );
          }),
      // child: GridView.count(
      //   shrinkWrap: true,
      //   physics: const NeverScrollableScrollPhysics(),
      //   crossAxisCount: 2,
      //   crossAxisSpacing: 15,
      //   mainAxisSpacing: 15,
      //   children: [
      //     Customgridcard(
      //       Icont:
      //       percent: 0.8,
      //       headText: "Mobile App",
      //       subText: 'E-commerse',
      //       date: "May,23,2023",
      //       textPercent: "80%",
      //     ),
      //     Customgridcard(
      //       Icont:
      //       percent: 0.4,
      //       headText: "Dashbord",
      //       subText: 'chart',
      //       date: "May,23,2023",
      //       textPercent: "40%",
      //     ),
      //     Customgridcard(
      //       Icont: ,
      //       percent: 0.6,
      //       headText: "Banner",
      //       subText: 'Managing',
      //       date: "May,23,2023",
      //       textPercent: "60%",
      //     ),
      //     Customgridcard(
      //       Icont: Icons.design_services_rounded,
      //       percent: 0.7,
      //       headText: "UI UX",
      //       subText: 'Task manager',
      //       date: "May,23,2023",
      //       textPercent: "70%",
      //     )
      //   ],
      // ),
    );
  }
}
