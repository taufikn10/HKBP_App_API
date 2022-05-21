import 'package:flutter/material.dart';
import 'package:hkbp_app/fontstyle.dart';

class TxtField extends StatelessWidget {
  final dynamic hintStyle;
  final dynamic hintTxt;
  final bool readOnly;
  final dynamic controllertxt;

  const TxtField({
    Key? key,
    required this.hintStyle,
    required this.hintTxt,
    required this.readOnly,
    this.controllertxt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Padding(
        padding: const EdgeInsets.only(top: 16, bottom: 8),
        child: TextField(
          style: txtR12d,
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  Radius.circular(12),
                ),
                borderSide: BorderSide(color: lightGreyColor),
              ),
              contentPadding:
                  const EdgeInsets.only(top: 5, bottom: 5, left: 12),
              focusedBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  Radius.circular(12),
                ),
                borderSide: BorderSide(color: lightGreyColor),
              ),
              filled: true,
              fillColor: const Color(0xffFFFFFF),
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              hintText: hintTxt,
              hintStyle: hintStyle),
          readOnly: readOnly,
          controller: controllertxt,
        ),
      ),
    );
  }
}
