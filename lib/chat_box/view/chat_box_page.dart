

import 'package:flutter/material.dart';

class MainChatBoxPage extends StatefulWidget {
  const MainChatBoxPage({super.key});

  @override
  State<MainChatBoxPage> createState() => _MainChatBoxPageState();
}

class _MainChatBoxPageState extends State<MainChatBoxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(children: [
        // Header
        Row(children:[
          Card(),
          Cir()
        ]),
      ],)
      )
    );
  }
}