import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'home_page.dart';

class Homepage3 extends StatefulWidget {
  const Homepage3({super.key});

  @override
  State<Homepage3> createState() => _Homepage3State();
}

class _Homepage3State extends State<Homepage3> {
  int activTabtext = 0;
  List<String> text = ["Description", "Match Schedule"];

  String matn =
      '''Leeds were so impressive on their return to the top flight last term, picking up 59 points from 38 matches to claim ninth, just two points behind eighth-place Arsenal and three points behind seventh-place Tottenham Hotspur, and they also ended the campaign in excellent form.

The Whites made a disappointing start to their 2021-22 season, though, as they suffered a 5-1 defeat at Manchester United on August 14; Marcelo Bielsa's side are unbeaten in all competitions since then but are still waiting for their first league victory of the campaign.

Indeed, they have shared the points with Everton and Burnley in their last two Premier League fixtures, which came either side of a 3-0 home success over Crewe Alexandra in the EFL Cup.

Leeds held Liverpool to a 1-1 draw when the two teams locked horns at Elland Road last term, while Bielsa's side were on the wrong end of a seven-goal thriller at Anfield on September 12, and it would not be a surprise if there were goals this weekend considering how both teams will approach the match.

The Whites will be slightly wary of the dreaded second-season syndrome, and Bielsa will be determined to put a league victory on the board as soon as possible, but a revitalised Liverpool are set to provide difficult opposition for the former League One outfit on Sunday afternoon.''';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                width: double.infinity,
                height: 222,
                child: Image.asset(
                  "assets/livemachtdetail2.png",
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: [
                  Positioned(
                    top: 8,
                    left: 0,
                    right: 0,
                    child: SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => HomePage(),
                                ),
                              );
                            },
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            spacing: 20,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.cast, color: Colors.white),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.ios_share,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 31),
                  SizedBox(
                    height: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          style: IconButton.styleFrom(
                            backgroundColor: Colors.grey,
                            fixedSize: Size(62, 61),
                          ),
                          icon: Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                        SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 34,
                              height: 17,
                              decoration: BoxDecoration(
                                color: Color(0xFFFD0F00),
                                borderRadius: BorderRadiusGeometry.circular(10),
                              ),
                              child: Text(
                                "LIVE",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 10,
                                  color: Color(0xFFFFFFFF),
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ),
                            SizedBox(width: 241),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.settings, color: Colors.white),
                            ),
                            SizedBox(width: 10),
                            IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                "assets/arrows.svg",
                                width: 22,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 160),
            child: Column(
              spacing: 4,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Leeds United vs Liverpool",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(height: 3),
                Text(
                  "134.433 Watching",
                  style: TextStyle(
                    color: Color(0xFFDDDDDD),
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.none,
                  ),
                ),
                Text(
                  "Premier League - Gameweek 23",
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
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
          ),
          Expanded(
            child: activTabtext == 0
                ? SingleChildScrollView(
                    padding: const EdgeInsets.all(16),
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
                : const Center(
                    child: Text(
                      "Match Schedule content",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
