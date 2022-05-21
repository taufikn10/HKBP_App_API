import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hkbp_app/fontstyle.dart';

class NotFoundPage extends GetView {
  final String name;
  const NotFoundPage({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Text("Route for $name is not found"),
      ),
    );
  }
}
