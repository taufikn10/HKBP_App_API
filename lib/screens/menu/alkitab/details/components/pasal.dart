import 'package:flutter/material.dart';
import 'package:hkbp_app/components/background.dart';
import 'package:hkbp_app/fontstyle.dart';

class Pasal extends StatelessWidget {
  const Pasal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Align(
        alignment: Alignment.topCenter,
        child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 4,
          crossAxisSpacing: 15,
          children: List.generate(50, (index) {
            return Padding(
              padding: const EdgeInsets.all(8),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                elevation: 5,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    '${index + 1}',
                    style: txtSM16d,
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    ));
  }
}
