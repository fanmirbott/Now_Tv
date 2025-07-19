import 'package:dars10/cont_home.dart';
import 'package:flutter/material.dart';

class HomePageStateCenter extends StatelessWidget {
  const HomePageStateCenter({super.key, required this.matches});

  final List<Map<String, dynamic>> matches;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: List.generate(matches.length, (index) {
          final item = matches[index];
          return ContHomeTile(
            team1: item['team1']!,
            team2: item['team2']!,
            team1img: item['team1img']!,
            team2img: item['team2img']!,
            isLive: item['isLive'],
            time: item['time'],
          );
        }),
      ),
    );
  }
}
