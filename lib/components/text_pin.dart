import 'package:flutter/material.dart';

class TextPin extends StatelessWidget {
  final dynamic onChange;
  final bool focus;
  final dynamic onSubmit;
  final dynamic focusNodee;
  const TextPin({
    Key? key,
    this.onChange,
    required this.focus,
    this.onSubmit,
    this.focusNodee,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 30,
      child: TextField(
        autofocus: focus,
        focusNode: focusNodee,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        onChanged: onChange,
        onSubmitted: onSubmit,
      ),
    );
  }
}
