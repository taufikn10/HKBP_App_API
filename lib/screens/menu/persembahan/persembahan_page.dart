import 'package:flutter/material.dart';
import 'package:hkbp_app/components/topbar.dart';
import 'package:hkbp_app/fontstyle.dart';

import 'components/body.dart';
import 'components/checkbox_state.dart';

class PersembahanPage extends StatefulWidget {
  const PersembahanPage({
    Key? key,
  }) : super(key: key);

  @override
  State<PersembahanPage> createState() => _PersembahanPageState();
}

class _PersembahanPageState extends State<PersembahanPage> {
  final jenisPersembahan = [
    CheckBoxState(title: "Ucapan Syukur"),
    CheckBoxState(title: "Pembangunan Gereja"),
    CheckBoxState(title: "Donasi"),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final oldCheckboxTheme = theme.checkboxTheme;

    final newCheckBoxTheme = oldCheckboxTheme.copyWith(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    );
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: const TopBarDetails(
        txtTitle: "Persembahan",
      ),
      body: Body(
        dataTheme: theme.copyWith(checkboxTheme: newCheckBoxTheme),
        child: ListView(
          shrinkWrap: true,
          children: [
            ...jenisPersembahan.map(buildCheckBox).toList(),
          ],
        ),
      ),
    );
  }

  Widget buildCheckBox(CheckBoxState checkbox) => CheckboxListTile(
        controlAffinity: ListTileControlAffinity.leading,
        title: Text(
          checkbox.title,
          style: txtR14d,
        ),
        visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
        dense: true,
        autofocus: false,
        activeColor: const Color(0xff30BF2D),
        checkColor: Colors.white,
        // selected:  checkbox.value,
        value: checkbox.value,
        onChanged: (value) => setState(() => checkbox.value = value!),
      );
}
