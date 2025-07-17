import 'package:flutter/material.dart';

class ContHome extends StatelessWidget {
  const ContHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 358,
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: const Color(0xFF353535),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 196,
            height: 90,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Image.asset("assets/club_leds.png", width: 30, height: 30),
                    const SizedBox(width: 14),
                    const Text(
                      "Leeds United",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Image.asset("assets/club_liv.png", width: 30, height: 30),
                    const SizedBox(width: 14),
                    const Text(
                      "Liverpool",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: 41,
              height: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusGeometry.circular(5),
                color: Colors.red
              ),
              child: Center(
                child: Text(
                  "LIVE",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class ContHome1 extends StatelessWidget {
  const ContHome1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 358,
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: const Color(0xFF353535),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 196,
            height: 90,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Image.asset("assets/club_esp.png", width: 30, height: 30),
                    const SizedBox(width: 14),
                    const Text(
                      "Leeds United",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Image.asset("assets/club_atl.png", width: 30, height: 30),
                    const SizedBox(width: 14),
                    const Text(
                      "Liverpool",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: 41,
              height: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusGeometry.circular(5),
                color: Colors.red
              ),
              child: Center(
                child: Text(
                  "LIVE",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class ContHome2 extends StatelessWidget {
  const ContHome2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 358,
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: const Color(0xFF353535),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Image.asset("assets/realmadrid.png", width: 30, height: 30),
              const SizedBox(width: 14),
              const Text(
                "Real Madrid",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
              Spacer(),
              Text(
                "09.00 PM",
                style: TextStyle(fontSize: 14, color: Colors.white70),
              ),
              SizedBox(width: 10),
              Icon(Icons.notifications_none, color: Colors.white70),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Image.asset("assets/club_cela.png", width: 30, height: 30),
              SizedBox(width: 14),
              Text(
                "Celta Vigo",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ContHome3 extends StatelessWidget {
  const ContHome3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 358,
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: const Color(0xFF353535),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Image.asset("assets/club_samp.png", width: 30, height: 30),
              const SizedBox(width: 14),
              const Text(
                "Sampdoria",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              const Text(
                "09.00 PM",
                style: TextStyle(fontSize: 14, color: Colors.white70),
              ),
              const SizedBox(width: 10),
              const Icon(Icons.notifications_none, color: Colors.white70),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Image.asset("assets/club_int.png", width: 30, height: 30),
              const SizedBox(width: 14),
              const Text(
                "Inter Milan",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ContHome4 extends StatelessWidget {
  const ContHome4({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 358,
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: const Color(0xFF353535),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Image.asset("assets/club_milan.png", width: 30, height: 30),
              const SizedBox(width: 14),
              const Text(
                "AC Milan",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              const Text(
                "10.00 PM",
                style: TextStyle(fontSize: 14, color: Colors.white70),
              ),
              const SizedBox(width: 10),
              const Icon(Icons.notifications_none, color: Colors.white70),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Image.asset("assets/club_fior.png", width: 30, height: 30),
              const SizedBox(width: 14),
              const Text(
                "Fiorentina",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ContHome5 extends StatelessWidget {
  const ContHome5({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 358,
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: const Color(0xFF353535),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Image.asset("assets/club_mont.png", width: 30, height: 30),
              const SizedBox(width: 14),
              const Text(
                "Montpellier",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              const Text(
                "11.00 PM",
                style: TextStyle(fontSize: 14, color: Colors.white70),
              ),
              const SizedBox(width: 10),
              const Icon(Icons.notifications_none, color: Colors.white70),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Image.asset("assets/club_saint.png", width: 30, height: 30),
              const SizedBox(width: 14),
              const Text(
                "Saint-Etienne",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ContHome6 extends StatelessWidget {
  const ContHome6({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 358,
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: const Color(0xFF353535),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Image.asset("assets/club_lyon.png", width: 30, height: 30),
              const SizedBox(width: 14),
              const Text(
                "Lyon",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              const Text(
                "21.00 PM",
                style: TextStyle(fontSize: 14, color: Colors.white70),
              ),
              const SizedBox(width: 10),
              const Icon(Icons.notifications_none, color: Colors.white70),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Image.asset("assets/club_saint.png", width: 30, height: 30),
              const SizedBox(width: 14),
              const Text(
                "Saint-Etienne",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
