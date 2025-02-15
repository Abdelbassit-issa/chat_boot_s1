


import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../utils/chats.dart';
import '../../utils/shorts.dart';
import '../model/chat_form_model.dart';

Widget chatList(){
  return Column(
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
                      final ChatFormModel chat = chats[index];
                      return GestureDetector(
                        onTap: () {
                          context.go('/per_to_per_chat');
                        },
                        child: Card(
                          shape: BeveledRectangleBorder(
                            // side: BorderSide(color: Colors.blueGrey.shade300,strokeAlign: 0.1),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Text(
                                      chat.senderName,
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
                                            '${DateFormat('jm').format(DateTime.now())}:${DateFormat('yMMMEd').format(DateTime.now())}',
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
                              Expanded(
                                child: Text(
                                  chat.lastMass,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.blueGrey,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.fade,
                                  maxLines: 3,
                                ),
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
                                  chat.isViewd
                                      ? Container()
                                      : CircleAvatar(
                                        radius: 6,
                                        backgroundColor:
                                            Colors.lightGreenAccent.shade700,
                                      ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
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
          );
        
}