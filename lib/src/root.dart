import 'package:chat_boot_s1/router/main_router.dart';
import 'package:flutter/material.dart';

class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: mainRouter(true),
      debugShowCheckedModeBanner: false,
      title: 'chat ',
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
