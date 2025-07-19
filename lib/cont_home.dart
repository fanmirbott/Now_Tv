import 'package:dars10/LiveMachDetailPage2.dart';
import 'LiveMachtDetailPage.dart';
import 'package:flutter/material.dart';

class ContHomeTile extends StatefulWidget {
  final String team1;
  final String team2;
  final String team1img;
  final String team2img;
  final bool isLive;
  final String? time;

  const ContHomeTile({
    super.key,
    required this.team1,
    required this.team2,
    required this.team1img,
    required this.team2img,
    required this.isLive,
    this.time,
  });

  @override
  State<ContHomeTile> createState() => _ContHomeTileState();
}

class _ContHomeTileState extends State<ContHomeTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.isLive
            ? Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => Homepage3()))
            : Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => Homepage2()));
        setState(() {

        });
      },
      child: Container(
        width: 358,
        height: 90,
        margin: const EdgeInsets.symmetric(vertical: 6),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: const Color(0xFF353535),
          borderRadius: BorderRadius.circular(10),
        ),
        child: widget.isLive
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 196,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Image.asset(widget.team1img, width: 30, height: 30),
                            const SizedBox(width: 14),
                            Expanded(
                              child: Text(
                                widget.team1,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Image.asset(widget.team2img, width: 30, height: 30),
                            const SizedBox(width: 14),
                            Expanded(
                              child: Text(
                                widget.team2,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 41,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(
                      child: Text(
                        "LIVE",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Image.asset(widget.team1img, width: 30, height: 30),
                      const SizedBox(width: 14),
                      Expanded(
                        child: Text(
                          widget.team1,
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Text(
                        widget.time ?? '',
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.white70,
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Icon(
                        Icons.notifications_none,
                        color: Colors.white70,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Image.asset(widget.team2img, width: 30, height: 30),
                      const SizedBox(width: 14),
                      Text(
                        widget.team2,
                        style: const TextStyle(
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
    );
  }
}
