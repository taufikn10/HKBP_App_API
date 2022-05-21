import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hkbp_app/fontstyle.dart';

class CardNote extends StatelessWidget {
  const CardNote({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0,
      color: const Color(0xffFFFFFF),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 4),
                child: Text(
                  "Catatan :",
                  style: GoogleFonts.inter(
                    color: darkColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 10,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Pandaftaran peserta hanya bisa dilakukan untuk 2 orang.",
                style: txtR10d,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
