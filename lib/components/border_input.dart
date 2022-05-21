import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      width: size.width * 1,
      decoration: BoxDecoration(
        color: const Color(0xffF9F9FB),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xffCACACA)),
      ),
      child: child,
    );
  }
}
