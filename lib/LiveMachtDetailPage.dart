import 'package:dars10/cont_home.dart';
import 'package:dars10/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage2 extends StatefulWidget {
  const Homepage2({super.key});

  @override
  State<Homepage2> createState() => _Homepage2State();
}

class _Homepage2State extends State<Homepage2> {
  int activTabtext = 0;
  int activInd = 0;

  List<String> text = ["Description", "Match Schedule"];

  String matn =
      """Inter will face Roberto D’Aversa and his new look Sampdoria side on Sunday afternoon. Though only on one point so far this season, Sampdoria have provided two decent showings against strong competition in Sassuolo and AC Milan. 

They drew 0-0 away to Sassuolo then suffered a narrow 1-0 defeat at home to Milan. The Ligurian side also added a substantial striking presence to supplement Fabio Quagliarella in another veteran, Francesco Caputo...""";

  String matn1 = " ";
  List<Widget> icons = [
    Icon(Icons.notifications, color: Colors.white),
    Icon(Icons.ios_share, color: Colors.white),
  ];

  String text1 =
      """Inter will face Roberto D’Aversa and his new look Sampdoria side on Sunday afternoon. Though only on one point so far this season, Sampdoria have provided two decent showings against strong competition in Sassuolo and AC Milan. 

They drew 0-0 away to Sassuolo then suffered a narrow 1-0 defeat at home to Milan. The Ligurian side also added a substantial striking presence to supplement Fabio Quagliarella in another veteran, Francesco Caputo... READ MORE""";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            height: 222,
            child: Stack(
              children: [
                Image.asset(
                  "assets/homePageBar/liveOrOffline/img.png",
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 70,
                  left: 107,
                  child: Container(
                    width: 174,
                    height: 78,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusGeometry.circular(12),
                      color: Colors.grey.withValues(alpha: 0.9),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          maxLines: 1,
                          "this macht will start in:",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 11,
                            color: Color(0xFFEAEAEA),
                            decoration: TextDecoration.none,
                          ),
                        ),
                        Text(
                          "22:19:32",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              spacing: 4,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sampdoria vs Inter Milan",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(height: 3),
                Text(
                  "Tomorrow, 12 Sep  - 08.00 PM",
                  style: TextStyle(
                    color: Color(0xFFDDDDDD),
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.none,
                  ),
                ),
                Text(
                  "Seria A - Gameweek 12",
                  style: TextStyle(
                    color: Color(0xFFDDDDDD),
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.none,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: Row(
              spacing: 19,
              children: [
                ...List.generate(icons.length, (index) {
                  return IconButton(
                    onPressed: () {
                      activInd = index;
                      setState(() {});
                    },
                    style: IconButton.styleFrom(
                      fixedSize: Size(34, 34),
                      backgroundColor: activInd == index
                          ? Colors.blueAccent.shade700
                          : Colors.grey.shade900,
                    ),
                    icon: icons[index],
                  );
                }),
              ],
            ),
          ),
          Row(
            children: [
              ...List.generate(text.length, (index) {
                return TextButton(
                  onPressed: () {
                    activTabtext = index;
                    setState(() {});
                  },
                  child: Text(
                    text[index],
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: activTabtext == index
                          ? Color(0xFFEAEAEA)
                          : Color(0xFF7A7A7A),
                    ),
                  ),
                );
              }),
            ],
          ),
          Expanded(
            child: activTabtext == 0
                ? SingleChildScrollView(
              padding: EdgeInsets.all(16),
              child: Text(
                matn,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  height: 1.5,
                  decoration: TextDecoration.none,
                ),
              ),
            )
                : Text(matn1),
          ),
        ],
      ),
    );
  }
}
