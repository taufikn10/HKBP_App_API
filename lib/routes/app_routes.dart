import 'package:flutter/material.dart';
import 'package:hkbp_app/components/navbar.dart';
import 'package:hkbp_app/routes/app_screens.dart';
import 'package:hkbp_app/screens/login/login_page.dart';
import 'package:hkbp_app/screens/notfound_page.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeViewRoute:
      return MaterialPageRoute(
        builder: (context) => const Navbar(),
      );
    case LoginViewRoute:
      return MaterialPageRoute(
        builder: (context) => const LoginPage(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => NotFoundPage(name: settings.name!),
      );
  }
}
