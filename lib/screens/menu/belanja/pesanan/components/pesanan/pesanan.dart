import 'package:flutter/material.dart';
import 'package:hkbp_app/fontstyle.dart';
import 'package:hkbp_app/list/list_belanja.dart';
import 'package:hkbp_app/screens/menu/belanja/components/line_lightgrey.dart';
import 'package:hkbp_app/screens/menu/belanja/pesanan/components/pesanan/detail_pesanan.dart';
import 'package:intl/intl.dart';

class Pesanan extends StatelessWidget {
  const Pesanan({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const DetailPesanan()));
        },
        child: Column(
          children: [
            Container(
              color: whiteColor,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 24, right: 24, bottom: 7, top: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "22 April 2022",
                      style: txtL12d,
                    ),
                    Text(
                      "Belum Diterima",
                      style: txtL12r,
                    ),
                  ],
                ),
              ),
            ),
            const LineLightgrey(),
            Container(
              color: whiteColor,
              child: Column(
                children: [
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: belanja.length - 7,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding:
                            const EdgeInsets.only(left: 24, right: 24, top: 12),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Image.asset(
                                    belanja[index]["img"][0],
                                    height: 64,
                                  ),
                                ),
                                const SizedBox(width: 24),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        belanja[index]["nama_produk"],
                                        style: txtM14d,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 4),
                                        child: Row(
                                          children: [
                                            Text(
                                              NumberFormat.currency(
                                                      locale: 'id',
                                                      decimalDigits: 0,
                                                      symbol: "Rp")
                                                  .format(
                                                      belanja[index]["harga"]),
                                              style: txtSB12d,
                                            ),
                                            const Spacer(),
                                            const Text("x 1"),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 12),
                              child: LineLightgrey(),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  const LineLightgrey(),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 24, right: 24, bottom: 7, top: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "5 Barang",
                          style: txtR12d,
                        ),
                        Row(
                          children: [
                            Text(
                              "Total pembayaran: ",
                              style: txtR12d,
                            ),
                            Text(
                              NumberFormat.currency(
                                      locale: 'id',
                                      decimalDigits: 0,
                                      symbol: "Rp ")
                                  .format(261000),
                              style: txtSB12b,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
