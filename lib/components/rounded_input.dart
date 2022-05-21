import 'package:flutter/material.dart';
import 'package:hkbp_app/fontstyle.dart';

import 'border_input.dart';

class RoundedInput extends StatelessWidget {
  final String hintText;
  final dynamic keyboardType;
  final dynamic inputAction;
  const RoundedInput({
    Key? key,
    required this.hintText,
    this.keyboardType,
    this.inputAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextFieldContainer(
        child: TextField(
          style: txtR14d,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: txtR14l,
            border: InputBorder.none,
          ),
          keyboardType: keyboardType,
          textInputAction: inputAction,
        ),
      ),
    );
  }
}
