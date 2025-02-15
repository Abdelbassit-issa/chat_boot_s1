import 'package:chat_boot_s1/all_chats/model/chat_form_model.dart';
import 'package:chat_boot_s1/all_chats/view/chats_list.dart';
import 'package:chat_boot_s1/utils/chats.dart';
import 'package:chat_boot_s1/utils/shorts.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../chat_box/view/chat_box_page.dart';

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
          child:
              MediaQuery.of(context).size.width > 600
                  ? Row(
                    children: [
                      Expanded(child: MainChatBoxPage()),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3,
                        child: chatList(),
                      ),
                    ],
                  )
                  : chatList(),
        ),
      ),
    );
  }
}
