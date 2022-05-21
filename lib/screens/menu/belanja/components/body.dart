import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hkbp_app/components/background.dart';
import 'package:hkbp_app/fontstyle.dart';
import 'package:hkbp_app/list/list_belanja.dart';
import 'package:intl/intl.dart';

class BodyBelanja extends StatelessWidget {
  const BodyBelanja({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Align(
        alignment: Alignment.topCenter,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: belanja.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {},
            child: Card(
              elevation: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.asset(
                              belanja[index]["img"],
                              height: 64,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  belanja[index]["nama_produk"],
                                  style: txtM14d,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 2, bottom: 0),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Sisa ",
                                        style: GoogleFonts.inter(
                                          color: blueColor,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12,
                                        ),
                                      ),
                                      Text(
                                        belanja[index]["sisa"].toString(),
                                        style: GoogleFonts.inter(
                                          color: blueColor,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      NumberFormat.currency(
                                              locale: 'id',
                                              decimalDigits: 0,
                                              symbol: "Rp")
                                          .format(belanja[index]["harga"]),
                                      style: txtSM12d,
                                    ),
                                    const Spacer(),
                                    OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        side: BorderSide(
                                            width: 1, color: blueColor),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        "Tambah",
                                        style: txtM12b,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: lightGreyColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
