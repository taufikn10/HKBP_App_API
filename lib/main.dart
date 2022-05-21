import 'package:flutter/material.dart';
import 'package:hkbp_app/fontstyle.dart';
import 'package:hkbp_app/routes/app_screens.dart';
import 'package:get/get.dart';
import 'package:hkbp_app/screens/notfound_page.dart';
import 'routes/app_routes.dart' as router;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          backgroundColor: backgroundColor,
        ),
        onGenerateRoute: router.generateRoute,
        initialRoute: LoginViewRoute,
        onUnknownRoute: (settings) => MaterialPageRoute(
            builder: (context) => NotFoundPage(name: settings.name!)));
  }
}
