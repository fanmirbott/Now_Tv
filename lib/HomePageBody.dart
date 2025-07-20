import 'package:flutter/material.dart';

import 'home_page_state_center.dart';

void main(){
  runApp(HomePageBody());
}

class HomePageBody extends StatefulWidget {
  HomePageBody({super.key});

  @override
  State<HomePageBody> createState() => _HomePageBody();
}

class _HomePageBody extends State<HomePageBody> {
  int barActive = 0;

  int activInd = 0;

  List<String> items = [
    "Today, 12 Sep",
    "Mon, 13 sep",
    "Tue, 14 sep",
    "Wed, 15 sep",
    "Thu, 16 sep",
    "Fri, 17 sep",
    "Sat, 18 sep",
  ];

  List<Widget> items1 = [
    Text(
      "ALL",
      style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w500,
        color: Color(0xFFFFFFFF),
      ),
    ),
    Image.asset("assets/homePageBar/img_1.png"),
    Image.asset("assets/homePageBar/img_2.png"),
    Image.asset("assets/homePageBar/img_3.png"),
    Image.asset("assets/homePageBar/img_4.png"),
  ];

  List<Map<String, String>> items2 = [
    {"icon": "assets/home.svg", "label": "Home"},
    {"icon": "assets/explore.svg", "label": "Explore"},
    {"icon": "assets/livee.svg", "label": "Live"},
    {"icon": "assets/price.svg", "label": "Reward"},
    {"icon": "assets/profil.svg", "label": "Profile"},
  ];

  final List<Map<String, dynamic>> matches =
  [
    {
      "team1": "Leeds United",
      "team1img": "assets/club/club_leds.png",
      "team2": "Liverpool",
      "team2img": "assets/club/club_liv.png",
      "isLive": true,
    },
    {
      "team1": "Espanyol",
      "team1img": "assets/club/club_esp.png",
      "team2": "Atletico Madrid",
      "team2img": "assets/club/club_atl.png",
      "isLive": true,
    },
    {
      "team1": "Real Madrid",
      "team1img": "assets/club/realmadrid.png",
      "team2": "Celta Vigo",
      "team2img": "assets/club/club_cela.png",
      "time": "09.00 PM",
      "isLive": false,
    },
    {
      "team1": "Sampdoria",
      "team1img": "assets/club/club_samp.png",
      "team2": "Inter Milan",
      "team2img": "assets/club/club_int.png",
      "time": "09.00 PM",
      "isLive": false,
    },
    {
      "team1": "AC Milan",
      "team1img": "assets/club/club_milan.png",
      "team2": "Fiorentina",
      "team2img": "assets/club/club_fior.png",
      "time": "10.00 PM",
      "isLive": false,
    },
    {
      "team1": "Montpellier",
      "team1img": "assets/club/club_mont.png",
      "team2": "Saint-Etienne",
      "team2img": "assets/club/club_saint.png",
      "time": "11.00 PM",
      "isLive": false,
    },
    {
      "team1": "Lyon",
      "team1img": "assets/club/club_lyon.png",
      "team2": "Saint-Etienne",
      "team2img": "assets/club/club_saint.png",
      "time": "21.00 PM",
      "isLive": false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 1.7),
          SizedBox(
            width: 390,
            height: 50,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 10,
                children: [
                  ...List.generate(items.length, (index) {
                    return TextButton(
                      onPressed: () {
                        barActive = index;
                        setState(() {});
                      },
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(6),
                        ),
                        backgroundColor: barActive == index
                            ? Color(0xFFFFFFFF)
                            : Color(0xFF282828),
                        side: BorderSide(
                          color: barActive == index
                              ? Color(0xFFFFFFFF)
                              : Color(0xFF8D8D8D),
                        ),
                      ),
                      child: Text(
                        items[index],
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Color(0xFF8D8D8D),
                        ),
                      ),
                    );
                  }),
                ],
              ),
            ),
          ),
          SizedBox(height: 17),
          SizedBox(
            width: 390,
            height: 72,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 15,
                children: [
                  ...List.generate(items1.length, (index1) {
                    return TextButton(
                      onPressed: () {
                        activInd = index1;
                        setState(() {});
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xFF373737),
                        fixedSize: Size(54, 54),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: items1[index1],
                      ),
                    );
                  }),
                ],
              ),
            ),
          ),
          SizedBox(height: 21),
          HomePageStateCenter(matches: matches),
        ],
      ),
    );
  }
}
