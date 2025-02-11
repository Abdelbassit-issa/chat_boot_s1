import 'package:chat_boot_s1/chat_box/model/chat_box_model.dart';
import 'package:chat_boot_s1/utils/formated_date_time.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uuid/uuid.dart';

class MainChatBoxPage extends StatefulWidget {
  const MainChatBoxPage({super.key});

  @override
  State<MainChatBoxPage> createState() => _MainChatBoxPageState();
}

class _MainChatBoxPageState extends State<MainChatBoxPage> {
  final nowTime = FormatedDateTime.getFormatedDateTime();
  final chatedUser = ChatBoxModel(
    chatID: Uuid().v4.toString(),
    lastView: FormatedDateTime.getFormatedDateTime(),
    masseges: [],
    userID: Uuid().v4.toString(),
    userImage:
        'https://images.freeimages.com/image/previews/10e/dragon-brand-kit-5690979.jpg?fmt=webp&w=500',
    userNmae: 'Red Dragor',
    userProfile: '',
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 89,
              child: Row(
                children: [
                  Expanded(
                    child: Card(
                      shape: BeveledRectangleBorder(
                        // side: BorderSide(color: Colors.blueGrey.shade300,strokeAlign: 0.1),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5),
                                child: Text(
                                  chatedUser.userNmae,
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.blueGrey.shade800,
                                  ),
                                ),
                              ),
                              Card(
                                shape: BeveledRectangleBorder(
                                  side: BorderSide(
                                    color: Colors.blueGrey.shade300,
                    
                                    width: 0.5,
                                  ),
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.date_range,
                                        size: 14,
                                        color: Colors.blueGrey[400],
                                      ),
                                      Text(
                                        nowTime,
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.blueGrey[400],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                    
                          Stack(
                            children: [
                              SizedBox(
                                width: 62,
                                height: 62,
                                child: Card(
                                  shape: BeveledRectangleBorder(
                                    side: BorderSide(
                                      color: Colors.blueGrey.shade300,
                                      strokeAlign: 0.1,
                                    ),
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                  child: Image.network(
                                    fit: BoxFit.cover,
                                    'https://images.freeimages.com/image/previews/10e/dragon-brand-kit-5690979.jpg?fmt=webp&w=500',
                                  ),
                                ),
                              ),
                              CircleAvatar(
                                radius: 6,
                                backgroundColor:
                                    Colors.lightGreenAccent.shade700,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                 
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
