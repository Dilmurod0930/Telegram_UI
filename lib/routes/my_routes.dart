import 'package:flutter/material.dart';
import 'package:telegram_ui/screens/auth/view/auth_view.dart';
import 'package:telegram_ui/screens/cart/pages/chats/chat_view.dart';
import 'package:telegram_ui/screens/cart/view/cart_view.dart';
import 'package:telegram_ui/screens/pages/apperance/apperance_view.dart';
import 'package:telegram_ui/screens/pages/data_and_storage/data_and_storage_view.dart';
import 'package:telegram_ui/screens/pages/privacy_and_security/privacy_and_security_view.dart';
import 'package:telegram_ui/screens/pages/profiles/profiles_view.dart';
import 'package:telegram_ui/screens/pages/stickers/stickers_view.dart';

class MyRoutes {
  static final MyRoutes _instanse = MyRoutes.init();
  static MyRoutes get instanse => MyRoutes._instanse;
  MyRoutes.init();

  Route? onGenerate(RouteSettings s) {
    var args = s.arguments;
    switch (s.name) {
      case '/auth':
        return MaterialPageRoute(builder: (_) => AuthView());
      case '/cart':
        return MaterialPageRoute(builder: (_) => const CartView());
      case '/chat':
        return MaterialPageRoute(builder: (_) => const ChatView());
      case '/profile':
        return MaterialPageRoute(builder: (_) => const ProfileView());
      case '/stickers':
        return MaterialPageRoute(builder: (_) => const StickersView());
      case '/recent':
        return MaterialPageRoute(builder: (_) => const StickersView());
      case '/saved':
        return MaterialPageRoute(builder: (_) => const StickersView());
      case '/notfications':
        return MaterialPageRoute(builder: (_) => StickersView());
      case '/security':
        return MaterialPageRoute(builder: (_) => PrivacyAndSecurityView());
      case '/data_storage':
        return MaterialPageRoute(builder: (_) => DataAndStorageView());
      case '/appearance':
        return MaterialPageRoute(builder: (_) => ApperanceView());
    }
  }
}
