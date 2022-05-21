import 'package:flutter/material.dart';

import '../fontstyle.dart';

class InputPin extends StatelessWidget {
  final dynamic onChanged;
  final dynamic focusNode;
  final bool auto;
  const InputPin({
    Key? key,
    this.onChanged,
    required this.auto,
    this.focusNode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 30,
      child: TextField(
        decoration: InputDecoration(
          hintText: "●",
          border: InputBorder.none,
          hintStyle: TextStyle(
            color: greyColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        // obscureText: true,
        // obscuringCharacter: '●',
        style: TextStyle(
          fontSize: 16,
          color: darkColor,
          fontWeight: FontWeight.w600,
        ),
        autofocus: auto,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        focusNode: focusNode,
        onChanged: onChanged,
      ),
    );
  }
}
