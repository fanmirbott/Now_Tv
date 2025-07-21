import 'package:flutter/material.dart';

class RewardDetailPage extends StatelessWidget {
  const RewardDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1E),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1F1F1F),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: const Text(
          'Reward',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 17,
            color: Color(0xFFFFFFFF),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: SizedBox(
                width: double.infinity,
                height: 165,
                child: SizedBox(
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset("assets/rewardHomePage/img_3.png"),
                      ),
                      Stack(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Image.asset(
                              "assets/rewardHomePage/img_4.png",
                            ),
                          ),
                          Positioned(
                            top: 34,
                            left: 250,
                            child: Text(
                              'Get 1 Ticket\nStreaming For\nYour Favorite\nMatch',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "1 Ticket Streaming",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              "1000 Points",
              style: TextStyle(color: Colors.white70, fontSize: 14),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                const Text(
                  "Match selected",
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Container(
                    width: 127,
                    height: 33,
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: const Color(0xFF2C2C2E),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: null,
                        hint: const Text(
                          'Select match:',
                          style: TextStyle(color: Colors.white70),
                        ),
                        items: const [
                          DropdownMenuItem(
                            value: 'match1',
                            child: Text('Match 1'),
                          ),
                          DropdownMenuItem(
                            value: 'match2',
                            child: Text('Match 2'),
                          ),
                        ],
                        onChanged: (value) {},
                        dropdownColor: const Color(0xFF2C2C2E),

                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 140),
              ],
            ),
            const SizedBox(height: 24),
            const Text(
              'Terms & Conditions',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Leeds were so impressive on their return to the top flight last term, picking up 59 points from 38 matches to claim ninth, just two points behind eighth-place Arsenal and three points behind seventh-place Tottenham Hotspur, and they also ended the campaign in excellent form.',
              style: TextStyle(color: Colors.white70, fontSize: 14),
            ),
            SizedBox(
              height: 290,
            ),
            Align(
              alignment: Alignment.center,
              child: IconButton(
                alignment: Alignment.center,
                onPressed: () {},
                style: IconButton.styleFrom(
                  fixedSize: Size(336, 40),
                  backgroundColor: Color(0xFF00A3B7),
                  maximumSize: Size(336, 40),
                ),
                icon: Text(
                  "Redeem",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Color(0xFFEAEAEA),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
