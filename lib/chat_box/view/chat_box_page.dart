import 'dart:typed_data';

import 'package:chat_boot_s1/chat_box/model/chat_box_model.dart';
import 'package:chat_boot_s1/chat_box/model/chat_stractur.dart';
import 'package:chat_boot_s1/utils/formated_date_time.dart';
import 'package:chat_boot_s1/utils/golden_ratio.dart';
import 'package:chat_boot_s1/utils/mass.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class MainChatBoxPage extends StatefulWidget {
  const MainChatBoxPage({super.key});

  @override
  State<MainChatBoxPage> createState() => _MainChatBoxPageState();
}

class _MainChatBoxPageState extends State<MainChatBoxPage> {
  final nowTime = FormatedDateTime.getFormatedDateTime();
  final chatFormCrs = TextEditingController();
  final ScrollController listViewCrs = ScrollController();
  final formKey = GlobalKey<FormState>();
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
  void initState() {
    super.initState();
    // Scroll to the bottom after the first frame is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollToBottom();
    });
  }
    void _scrollToBottom() {
    listViewCrs.animateTo(
      listViewCrs.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 71,
              child: Row(
                children: [
                  Expanded(
                    child: Card(
                      elevation: 3,
                      color: Colors.blueGrey.shade100,
                      shape: BeveledRectangleBorder(
                        // side: BorderSide(color: Colors.blueGrey.shade300,strokeAlign: 0.1),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                    
                          Row(
                            children: [
                             Stack(
                                children: [
                                  SizedBox(
                                    width: 55,
                                    height: 55,
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
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(2),
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
                                color: Colors.blueGrey.shade200,

                                width: 0.2,
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
                             ],
                          ),
                         Container(),],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: ListView.builder(
                clipBehavior: Clip.hardEdge,
                itemCount: fakeChatData.length,
                scrollDirection: Axis.vertical,
                controller: listViewCrs,

                // itemExtent: 100.0,
                itemBuilder: (context, index) {
                  final chat_mass = fakeChatData[index];
                  return Align(
                    alignment:
                        chat_mass.senderID == 'user31'
                            ? Alignment.centerRight
                            : Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: SizedBox(
                        width:
                            MediaQuery.of(context).size.width < 600
                                ? 261.8033988750235 * golden_ratio
                                : 261.8033988750235 * (golden_ratio * 1.2),

                        child:Card(
                          color: chat_mass.senderID != 'user31'
                              ? Colors.blueGrey.shade300
                              : Colors.blueGrey.shade400,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(chat_mass.senderID,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text(chat_mass.sendedTime,
                                    style: TextStyle(fontSize: 12)),
                                SizedBox(height: 4),
                                SelectableText( // Use SelectableText
                                  chat_mass.mass,
                                  style: TextStyle(fontSize: 16),
                                  // Add these for better styling
                                  textAlign: TextAlign.start,
                                  textDirection: TextDirection.ltr,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 60,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                child: Row(
                  children: [
                    Expanded(
                      child: Form(
                        key: formKey,
                        child: Container(
                          height: 55,
                          decoration: BoxDecoration(
                            color: Colors.blueGrey.shade100,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: TextFormField(
                            controller: chatFormCrs,
                            cursorColor: Colors.blueGrey.shade600,
                            cursorWidth: 5,
                            maxLines: 6,

                            cursorRadius: const Radius.circular(1),
                            decoration: InputDecoration(
                              hintStyle: TextStyle(
                                fontSize: 17,
                                color: Colors.blueGrey.shade600,
                              ),

                              // hintText: 'Write...',
                              border: InputBorder.none,
                              contentPadding: const EdgeInsets.all(13),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please write a message';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 55,
                      height: 55,
                      child: Card(
                        shape: BeveledRectangleBorder(
                          side: BorderSide(
                            color: Colors.blueGrey.shade300,
                            strokeAlign: 0.1,
                          ),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: IconButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              fakeChatData.add(
                                ChatStractur(
                                  massegeID: 'msg011',
                                  sendedTime: '2025-02-11 20:00',
                                  senderID: 'user31',
                                  mass: chatFormCrs.text,
                                  file: Uint8List.fromList([1, 2, 3, 4, 5]),
                                ),
                              );
                              chatFormCrs.clear(); // Clear the text field
                              setState(() {
                                // Scroll to the bottom after adding the message
                                WidgetsBinding.instance.addPostFrameCallback((
                                  _,
                                ) {
                                  listViewCrs.animateTo(
                                    listViewCrs.position.maxScrollExtent,
                                    duration: const Duration(milliseconds: 500),
                                    curve: Curves.easeOut,
                                  );
                                });
                              });
                            }
                          },
                          icon: Icon(
                            Icons.send,
                            color: Colors.blueGrey.shade600,
                            size: 21,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
