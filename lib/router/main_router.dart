import 'package:chat_boot_s1/auth/view/login.dart';
import 'package:chat_boot_s1/all_chats/view/main_page.dart';
import 'package:chat_boot_s1/goups/view/groubs.dart';
import 'package:go_router/go_router.dart';

GoRouter mainRouter(bool userLoggedIn) {
  return GoRouter(
    redirect: (context, state) => userLoggedIn ? null : '/',
    initialLocation: '/',
    routes: [
      GoRoute(path: '/', builder: (context, state) => Login(), routes: [

        ]
      ),
      GoRoute(
        path: '/all_chats_page',
        builder: (context, state) => MainChatPage(),
        routes: [
          GoRoute(path: 'groubs', builder: (context, state) => Groups()),
          // GoRoute(path: 'friends', builder: (context, state) => FriendsPage()),
          // GoRoute(
          //   path: 'bloocked_friends',
          //   builder: (context, state) => BlockedFriendsPage(),
          // ),
        ],
      ),
    ],
  );
}
