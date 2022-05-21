import 'package:flutter/material.dart';
import 'package:hkbp_app/fontstyle.dart';

class ListDataRow extends StatelessWidget {
  final String txtName;
  final dynamic onlyPadding;
  final String txtDetail;

  const ListDataRow({
    Key? key,
    required this.txtName,
    required this.onlyPadding,
    required this.txtDetail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          txtName,
          style: txtR14d,
        ),
        Padding(
          padding: onlyPadding,
          child: Text(
            ":",
            style: txtM10d,
          ),
        ),
        Expanded(
          child: Text(
            txtDetail,
            style: txtR14d,
          ),
        ),
      ],
    );
  }
}
