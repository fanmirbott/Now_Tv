import 'package:flutter/material.dart';

void main(){
  runApp(LivePage());
}

class LivePage extends StatefulWidget {
  const LivePage({super.key});

  @override
  State<LivePage> createState() => _LivePageState();
}

class _LivePageState extends State<LivePage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
