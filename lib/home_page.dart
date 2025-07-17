import 'package:dars10/cont_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int isActive = 0;
  int barActive = 0;

  int activInd = 0;
  Color isColor = Color(0xFFEAEAEA);

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
    Image.asset("assets/img_1.png"),
    Image.asset("assets/img_2.png"),
    Image.asset("assets/img_3.png"),
    Image.asset("assets/img_4.png"),
  ];

  List<Map<String, String>> items2 = [
    {"icon": "assets/home.svg", "label": "Home"},
    {"icon": "assets/explore.svg", "label": "Explore"},
    {"icon": "assets/livee.svg", "label": "Live"},
    {"icon": "assets/price.svg", "label": "Reward"},
    {"icon": "assets/profil.svg", "label": "Profile"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1E1E1E),
        title: Text(
          "NOW TV",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w800,
            color: Color(0xFFFFFFFF),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/search.svg", height: 20, width: 14),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/notific.svg", height: 20, width: 14),
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
      body: Column(
        children: [
          SizedBox(height: 1.7),
          Container(
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
          Container(
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
          SizedBox(height: 21,),
          Center(
            child: SingleChildScrollView(
              child: Column(
                spacing: 2,
                children: [
                  ContHome(),
                  ContHome1(),
                  ContHome2(),
                  ContHome3(),
                  ContHome4(),
                  ContHome5(),
                  ContHome6(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ColorFilter.mode(
// Color(0xFFEAEAEA), BlendMode.srcIn),