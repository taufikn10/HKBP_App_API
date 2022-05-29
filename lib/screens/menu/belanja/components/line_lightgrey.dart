import 'package:flutter/material.dart';
import 'package:hkbp_app/fontstyle.dart';

class LineLightgrey extends StatelessWidget {
  const LineLightgrey({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: lightGreyColor),
        ),
      ),
    );
  }
}
