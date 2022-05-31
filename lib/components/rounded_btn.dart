import 'package:flutter/material.dart';
import 'package:hkbp_app/fontstyle.dart';

class RoundedButton extends StatelessWidget {
  final Widget child;
  const RoundedButton({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      width: size.width,
      height: 43,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: child,
      ),
    );
  }
}

class StyleBtn extends StatelessWidget {
  final String txtBtn;
  final dynamic pressBtn;
  const StyleBtn({
    Key? key,
    required this.txtBtn,
    required this.pressBtn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: blueColor,
      ),
      child: Text(
        txtBtn,
        style: txtM14w,
      ),
      onPressed: pressBtn,
    );
  }
}
