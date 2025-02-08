import 'package:chat_boot_s1/utils/chats.dart';
import 'package:chat_boot_s1/utils/shorts.dart';
import 'package:flutter/material.dart';

class MainChatPage extends StatefulWidget {
  const MainChatPage({super.key});

  @override
  State<MainChatPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 59,
                child: Card(
                  shape: BeveledRectangleBorder(
                    // side: BorderSide(color: Colors.blueGrey.shade300,strokeAlign: 0.1),
                    borderRadius: BorderRadius.circular(3),
                  ),
                  color: Colors.blueGrey.shade100,
                  child: Row(
                    children: [
                      
                      Expanded(
                        child: TextFormField(

                        )
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 55,
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Card(
                    shape: BeveledRectangleBorder(
                      // side: BorderSide(color: Colors.blueGrey.shade300,strokeAlign: 0.1),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    color: Colors.blueGrey.shade200,
                    child: Row(
                      children: [
                        Expanded(
                          child: ListView.builder(
                            itemCount: sect.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(5),
                                child: sect[index],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  shape: BeveledRectangleBorder(
                    // side: BorderSide(color: Colors.blueGrey.shade300,strokeAlign: 0.1),
                    borderRadius: BorderRadius.circular(3),
                  ),
                  color: Colors.blueGrey.shade100,
                  child: ListView.builder(
                    itemCount: chats.length,
                    scrollDirection: Axis.vertical,

                    itemBuilder: (context, index) {
                      return chats[index];
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 55,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text('Footer'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
