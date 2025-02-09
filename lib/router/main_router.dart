import 'package:chat_boot_s1/all_chats/view/main_page.dart';
import 'package:chat_boot_s1/chat_box/view/chat_box_page.dart';
import 'package:go_router/go_router.dart';

GoRouter mainRouter(bool userLoggedIn) {
  return GoRouter(
    redirect: (context, state) => userLoggedIn ? null : '/',
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/all_chats_page',
        builder: (context, state) => MainChatPage(),
        routes: [
          GoRoute(
            path: 'per_to_per_chat',
            builder: (context, state) => MainChatBoxPage(),
          ),
        ],
      ),
    ],
  );
}
