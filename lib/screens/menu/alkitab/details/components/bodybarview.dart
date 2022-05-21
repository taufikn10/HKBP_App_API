import 'package:flutter/material.dart';
import 'package:hkbp_app/components/background.dart';
import 'package:hkbp_app/screens/menu/alkitab/details/components/ayat.dart';
import 'package:hkbp_app/screens/menu/alkitab/details/components/pasal.dart';

import 'kitab.dart';

class BodyBarView extends StatelessWidget {
  const BodyBarView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Background(
      child: TabBarView(
        children: [
          Kitab(),
          Pasal(),
          Ayat(),
        ],
      ),
    );
  }
}
