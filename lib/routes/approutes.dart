import 'package:flutter/material.dart';
import 'package:wolly_vpn/pages/home.dart';
import 'package:wolly_vpn/pages/login.dart';
import 'package:wolly_vpn/pages/signup.dart';
import 'package:wolly_vpn/pages/splash.dart';
import 'package:wolly_vpn/pages/subscribe.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const Splash());
      case '/signup':
        return MaterialPageRoute(builder: (_) => const Register());
      case '/login':
        return MaterialPageRoute(builder: (_) => const Login());
      case '/home':
        return MaterialPageRoute(builder: (_) => const Home());
      case '/subscribe':
        return MaterialPageRoute(builder: (_) => const Subscribe());

      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            appBar: AppBar(title: const Text("Error")),
            body: const Center(
              child: Text("Error!!!"),
            ),
          );
        });
    }
  }
}
