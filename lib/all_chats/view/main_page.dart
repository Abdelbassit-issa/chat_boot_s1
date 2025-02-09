import 'package:chat_boot_s1/utils/chats.dart';
import 'package:chat_boot_s1/utils/shorts.dart';
import 'package:flutter/material.dart';

class MainChatPage extends StatefulWidget {
  const MainChatPage({super.key});

  @override
  State<MainChatPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainChatPage> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: SizedBox(
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
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blueGrey.shade100,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: TextFormField(
                       
                              cursorColor: Colors.blueGrey.shade600,
                              cursorWidth: 5,
                              cursorRadius: const Radius.circular(1),
                              decoration: InputDecoration(
                                hintStyle: TextStyle(
                                  fontSize: 17,
                                  color: Colors.blueGrey.shade600,
                                ),
                                hintText: 'Search',
                                suffixIcon: Icon(
                                  Icons.search,
                                  color: Colors.blueGrey.shade600,
                                  size: 21,
                                ),
                                border: InputBorder.none,
                                contentPadding: const EdgeInsets.all(13),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
