import 'package:dars10/home_page_state_center.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dars10/explore_page.dart';
import 'package:dars10/live_page.dart';
import 'package:dars10/reward_page.dart';
import 'package:dars10/profile_page.dart';
import 'package:dars10/HomePageBody.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int isActive = 0;

  final List<Widget> pages = [
    HomePageBody(),
    ExplorePage(),
    LivePage(),
    RewardPage(),
    ProfilePage(),
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
      "team1img": "assets/club_leds.png",
      "team2": "Liverpool",
      "team2img": "assets/club_liv.png",
      "isLive": true,
    },
    {
      "team1": "Espanyol",
      "team1img": "assets/club_esp.png",
      "team2": "Atletico Madrid",
      "team2img": "assets/club_atl.png",
      "isLive": true,
    },
    {
      "team1": "Real Madrid",
      "team1img": "assets/realmadrid.png",
      "team2": "Celta Vigo",
      "team2img": "assets/club_cela.png",
      "time": "09.00 PM",
      "isLive": false,
    },
    {
      "team1": "Sampdoria",
      "team1img": "assets/club_samp.png",
      "team2": "Inter Milan",
      "team2img": "assets/club_int.png",
      "time": "09.00 PM",
      "isLive": false,
    },
    {
      "team1": "AC Milan",
      "team1img": "assets/club_milan.png",
      "team2": "Fiorentina",
      "team2img": "assets/club_fior.png",
      "time": "10.00 PM",
      "isLive": false,
    },
    {
      "team1": "Montpellier",
      "team1img": "assets/club_mont.png",
      "team2": "Saint-Etienne",
      "team2img": "assets/club_saint.png",
      "time": "11.00 PM",
      "isLive": false,
    },
    {
      "team1": "Lyon",
      "team1img": "assets/club_lyon.png",
      "team2": "Saint-Etienne",
      "team2img": "assets/club_saint.png",
      "time": "21.00 PM",
      "isLive": false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1E1E1E),
        title: Positioned(
          child: Text(
            "NOW TV",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w800,
              color: Color(0xFFFFFFFF),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/search.svg",
              height: 20,
              width: 14,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/notific.svg",
              height: 20,
              width: 14,
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (index) {
          isActive = index;
          setState(() {});
        },
        indicatorColor: Colors.transparent,
        labelTextStyle: WidgetStateProperty<TextStyle>.fromMap({
          WidgetState.selected: TextStyle(color: Color(0xFFEAEAEA)),
          WidgetState.any: TextStyle(color: Colors.grey),
        }),
        backgroundColor: Color(0xFF2D2D2D),
        selectedIndex: isActive,
        destinations: List.generate(5, (index) {
          return NavigationDestination(
            icon: SvgPicture.asset(
              items2[index]['icon']!,
              height: 24,
              width: 24,
              colorFilter: ColorFilter.mode(
                isActive != index ? Colors.grey : Color(0xFFEAEAEA),
                BlendMode.srcIn,
              ),
            ),
            label: items2[index]['label']!,
          );
        }),
      ),
      backgroundColor: Colors.black,
      body: IndexedStack(
        index: isActive,
        children: pages,
      ),
    );
  }
}


//SingleChildScrollView(
//         child: Column(
//           children: [
//             SizedBox(height: 1.7),
//             SizedBox(
//               width: 390,
//               height: 50,
//               child: SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   spacing: 10,
//                   children: [
//                     ...List.generate(items.length, (index) {
//                       return TextButton(
//                         onPressed: () {
//                           barActive = index;
//                           setState(() {});
//                         },
//                         style: TextButton.styleFrom(
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadiusGeometry.circular(6),
//                           ),
//                           backgroundColor: barActive == index
//                               ? Color(0xFFFFFFFF)
//                               : Color(0xFF282828),
//                           side: BorderSide(
//                             color: barActive == index
//                                 ? Color(0xFFFFFFFF)
//                                 : Color(0xFF8D8D8D),
//                           ),
//                         ),
//                         child: Text(
//                           items[index],
//                           style: TextStyle(
//                             fontWeight: FontWeight.w500,
//                             fontSize: 15,
//                             color: Color(0xFF8D8D8D),
//                           ),
//                         ),
//                       );
//                     }),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(height: 17),
//             SizedBox(
//               width: 390,
//               height: 72,
//               child: SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   spacing: 15,
//                   children: [
//                     ...List.generate(items1.length, (index1) {
//                       return TextButton(
//                         onPressed: () {
//                           activInd = index1;
//                           setState(() {});
//                         },
//                         style: TextButton.styleFrom(
//                           backgroundColor: Color(0xFF373737),
//                           fixedSize: Size(54, 54),
//                         ),
//                         child: Padding(
//                           padding: const EdgeInsets.all(5),
//                           child: items1[index1],
//                         ),
//                       );
//                     }),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(height: 21),
//             HomePageStateCenter(matches: matches),
//           ],
//         ),
//       ),