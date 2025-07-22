import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingPage(),
    ),
  );
}

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  late PageController _pageController;
  int isActiv = 0;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void nextPage() {
    if (isActiv < 2) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  List<Map> items = [
    {
      "text": "Easy Streaming",
      "text1": "Choose your plan to watch live match your favourite club.",
    },

    {
      "text": "Always Uptodate ",
      "text1": "Stay updated with match highlight, preview and hot news",
    },
    {
      "text": "Get Amazing Reward",
      "text1": "Redeem your points to get an amazing reward",
    },
  ];

  List<Map> items1 = [
    {
      "text": "Next",
      "text1": "Skip",
    },
    {
      "text": "Next",
      "text1": "Back",
    },

    {
      "text": "Let’s Get Started",
      "text1": "Back",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2D2D2D),
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 363,
                child: PageView(
                  controller: _pageController,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index) {
                    setState(() {
                      isActiv = index;
                    });
                  },
                  children: const [
                    ImageWidget("assets/onboardingPage/img.png"),
                    ImageWidget("assets/onboardingPage/img_1.png"),
                    ImageWidget("assets/onboardingPage/img_2.png"),
                  ],
                ),
              ),
              const SizedBox(height: 28),
              Container(
                width: 293,
                height: 99,
                child: Column(
                  children: [
                    Text(
                      items[isActiv]['text'],
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                    const SizedBox(height: 18),
                    Text(
                      items[isActiv]['text1'],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color(0xFFDDDDDD),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 128),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(3, (index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: isActiv == index
                          ? const Color(0xFF777777)
                          : const Color(0xFF454343),
                      shape: BoxShape.circle,
                    ),
                  );
                }),
              ),
              const SizedBox(height: 170),
              SizedBox(
                width: 336,
                height: 40,
                child: IconButton(
                  onPressed: nextPage,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF00A3B7),
                  ),
                  icon: Text(
                    items1[isActiv]["text"],
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFEAEAEA),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: 336,
                height: 40,
                child: IconButton(
                  onPressed: () {
                    if (isActiv == 0) {
                      _pageController.jumpToPage(2); // Skip
                    } else {
                      _pageController.previousPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      ); // Back
                    }
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                  icon: Text(
                    isActiv == 0 ? "Skip" : "Back",  // Matnni ham moslashtiramiz
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFEAEAEA),
                    ),
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

class ImageWidget extends StatelessWidget {
  final String path;

  const ImageWidget(this.path, {super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(path, fit: BoxFit.cover);
  }
}
