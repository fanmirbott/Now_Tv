import 'package:flutter/material.dart';

void main() {
  runApp(OnboardingPage());
}

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _State();
}

class _State extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2D2D2D),
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 363,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Image.asset(
                      "assets/onboardingPage/img.png",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "assets/onboardingPage/img_1.png",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "assets/onboardingPage/img_2.png",
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 28),
              Container(
                width: 293,
                height: 99,
                child: Column(
                  children: [
                    Text(
                      "Easy Streaming",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                    SizedBox(height: 18),
                    Text(
                      "Choose your plan to watch live match your favourite club.",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color(0xFFDDDDDD),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 128),
              Container(
                width: 40,
                height: 8,
                child: Row(
                  spacing: 8,
                  children: [
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: Color(0xFF777777),
                        // color: Color(0xFF454343),
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: Color(0xFF454343),
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: Color(0xFF454343),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 148),
              IconButton(
                onPressed: () {},
                style: IconButton.styleFrom(
                  backgroundColor: Color(0xFF00A3B7),
                  fixedSize: Size(336, 40),
                ),
                icon: Text(
                  "Next",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFEAEAEA),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: IconButton.styleFrom(
                  backgroundColor: Colors.grey,
                  fixedSize: Size(336, 40),
                ),
                icon: Text(
                  "Skip",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFEAEAEA),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
