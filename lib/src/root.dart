import 'package:chat_boot_s1/router/main_router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: mainRouter(true),
      debugShowCheckedModeBanner: false,
      title: 'chat ',
      theme: ThemeData(textTheme: GoogleFonts.ibmPlexSansDevanagariTextTheme()),
    );
  }
}
