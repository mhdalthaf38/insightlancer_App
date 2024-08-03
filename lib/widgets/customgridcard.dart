import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Customgridcard extends StatefulWidget {
  double percent;
  String headText;
  String subText;
  String textPercent;

  IconData Icont;

  String date;
  Customgridcard({
    super.key,
    required this.Icont,
    required this.percent,
    required this.headText,
    required this.subText,
    required this.date,
    required this.textPercent,
  });

  @override
  State<Customgridcard> createState() => _CustomgridcardState();
}

class _CustomgridcardState extends State<Customgridcard> {
  Color customcolor = const Color.fromARGB(255, 235, 240, 252);

  Color Textcolor = const Color.fromARGB(
    255,
    9,
    59,
    127,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: customcolor, borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 5),
                child: Text(
                  widget.date,
                  style: TextStyle(color: Textcolor, fontSize: 11),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  ':',
                  style: TextStyle(
                      color: Textcolor,
                      fontWeight: FontWeight.w900,
                      fontSize: 17),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 15, right: 10),
                  child: Icon(
                    widget.Icont,
                    color: Textcolor,
                    size: 30,
                  )),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.headText,
                    style: TextStyle(
                        color: Textcolor,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  Text(
                    widget.subText,
                    style: TextStyle(color: Textcolor, fontSize: 10),
                  )
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Progress',
                    style: TextStyle(color: Textcolor, fontSize: 12)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 0),
                child: LinearPercentIndicator(
                  barRadius: const Radius.circular(13),
                  percent: widget.percent,
                  progressColor: Textcolor,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(''),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      widget.textPercent,
                      style: TextStyle(color: Textcolor, fontSize: 10),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
