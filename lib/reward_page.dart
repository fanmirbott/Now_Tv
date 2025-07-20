import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(backgroundColor: Colors.black, body: RewardPage()),
    ),
  );
}

class RewardPage extends StatefulWidget {
  const RewardPage({super.key});

  @override
  State<RewardPage> createState() => _RewardPageState();
}

class _RewardPageState extends State<RewardPage> {
  int userPoints = 1240;

  List<Map> items = [
    {
      "colors1": Color(0xFFFAA543),
      "colors2": Color(0xFFFF8A00),
      "colors3": Color(0xFFFAA543),
      "text1": "1",
      "text2": "Ticket",
      "text3": "Streaming",
      "img1": "assets/rewardHomePage/img_1.png",
      "img2": "assets/rewardHomePage/img_2.png",
      "requiredPoints": 1000,
    },
    {
      "colors1": Color(0xFFFA258A),
      "colors2": Color(0xFFFF77B8),
      "colors3": Color(0xFFFA258A),
      "text1": "3",
      "text2": "Ticket",
      "text3": "Streaming",
      "img1": "assets/rewardHomePage/img_1.png",
      "img2": "assets/rewardHomePage/img_2.png",
      "requiredPoints": 2500,
    },
    {
      "colors1": Color(0xFF00B448),
      "colors2": Color(0xFF66FFA4),
      "colors3": Color(0xFF00B448),
      "text1": "7",
      "text2": "Days VIP",
      "text3": "access",
      "img1": "assets/rewardHomePage/img_1.png",
      "img2": "assets/rewardHomePage/img_2.png",
      "requiredPoints": 4500,
    },
    {
      "colors1": Color(0xFF3552FD),
      "colors2": Color(0xFF8D9EFF),
      "colors3": Color(0xFF3552FD),
      "text1": "14",
      "text2": "Days VIP",
      "text3": "access",
      "img1": "assets/rewardHomePage/img_1.png",
      "img2": "assets/rewardHomePage/img_2.png",
      "requiredPoints": 8000,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 22, right: 16, left: 16),
      child: Column(
        children: [
          SizedBox(
            height: 220,
            child: Stack(
              children: [
                Image.asset(
                  "assets/rewardHomePage/reward.png",
                  width: double.infinity,
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 16, left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Your Points",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFFEAEAEA),
                                ),
                              ),
                              Text(
                                "$userPoints",
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 34,
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(top: 16, right: 12),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFFFFFFF),
                              minimumSize: Size(115, 29),
                            ),
                            child: Text(
                              "Collect Points",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF00A3B7),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Container(
                        width: 315,
                        height: 37,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(0xFF12A0B1),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          "Redeem your points to get amazing reward",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 28),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Available Gift",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: Color(0xFFEAEAEA),
              ),
            ),
          ),
          SizedBox(height: 12),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              childAspectRatio: 100 / 200,
              mainAxisExtent: 200,
            ),
            itemCount: items.length,
            itemBuilder: (context, index) {
              int requiredPoints = items[index]["requiredPoints"];
              double progress = userPoints / requiredPoints;
              bool canRedeem = userPoints >= requiredPoints;

              return Center(
                child: Container(
                  width: 173,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Color(0xFF353535),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 173,
                        height: 98,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              items[index]["colors1"],
                              items[index]["colors1"],
                            ],
                          ),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(14),
                            topLeft: Radius.circular(14),
                          ),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 17, top: 9),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    items[index]["text1"],
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    items[index]["text2"],
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    items[index]["text3"],
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15, left: 12),
                              child: Stack(
                                children: [
                                  Image.asset(
                                    items[index]["img1"],
                                    color: Colors.white.withOpacity(0.5),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 39, left: 20),
                                    child: Image.asset(
                                      items[index]["img2"],
                                      color: items[index]["colors3"],
                                      width: 54,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 80, top: 15),
                        child: Text(
                          "$requiredPoints Points",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: 149,
                          height: 4,
                          decoration: BoxDecoration(
                            color: Colors.grey[700],
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: FractionallySizedBox(
                              widthFactor: progress > 1 ? 1 : progress,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(2),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Padding(
                        padding: const EdgeInsets.only(right: 60, top: 4),
                        child: IconButton(
                          onPressed: canRedeem ? () {} : null,
                          style: IconButton.styleFrom(
                            fixedSize: Size(77, double.infinity),
                            minimumSize: Size(77, 28),
                            backgroundColor: canRedeem ? Color(0xFF00A3B7) : Colors.grey[700],
                          ),
                          icon: Align(
                            child: Text(
                              "Reedem",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
