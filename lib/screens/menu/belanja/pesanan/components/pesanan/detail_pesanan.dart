import 'package:flutter/material.dart';
import 'package:hkbp_app/components/topbar.dart';
import 'package:hkbp_app/fontstyle.dart';
import 'package:intl/intl.dart';

import '../../../../../../list/list_belanja.dart';
import '../../../components/line_lightgrey.dart';

class DetailPesanan extends StatefulWidget {
  const DetailPesanan({Key? key}) : super(key: key);

  @override
  State<DetailPesanan> createState() => _DetailPesananState();
}

class _DetailPesananState extends State<DetailPesanan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: TopBarDetails(
        txtTitle: "Detail Pesanan",
        color: whiteColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
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
                          padding: const EdgeInsets.only(
                              left: 24, right: 24, top: 12),
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
                                          padding:
                                              const EdgeInsets.only(top: 4),
                                          child: Row(
                                            children: [
                                              Text(
                                                NumberFormat.currency(
                                                        locale: 'id',
                                                        decimalDigits: 0,
                                                        symbol: "Rp")
                                                    .format(belanja[index]
                                                        ["harga"]),
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
              ),
              const SizedBox(height: 8),
              Container(
                color: whiteColor,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Metode Pembayaran",
                            style: txtM14d,
                          ),
                          Text(
                            "Zipay",
                            style: txtR14d,
                          )
                        ],
                      ),
                    ),
                    const LineLightgrey(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 24),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Total Harga",
                                style: txtR14g,
                              ),
                              Text(
                                NumberFormat.currency(
                                        locale: 'id',
                                        decimalDigits: 0,
                                        symbol: "Rp ")
                                    .format(261000),
                                style: txtR14d,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12, bottom: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Potongan",
                                  style: txtR14g,
                                ),
                                Text(
                                  NumberFormat.currency(
                                          locale: 'id',
                                          decimalDigits: 0,
                                          symbol: "Rp ")
                                      .format(0),
                                  style: txtR14d,
                                ),
                              ],
                            ),
                          ),
                          const LineLightgrey(),
                          Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Total pembayaran",
                                  style: txtR14g,
                                ),
                                Text(
                                  NumberFormat.currency(
                                          locale: 'id',
                                          decimalDigits: 0,
                                          symbol: "Rp ")
                                      .format(261000),
                                  style: txtR14d,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const LineLightgrey(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 24),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "ID. Transaksi",
                                style: txtSB14d,
                              ),
                              Text(
                                "202204015C",
                                style: txtR14d,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12, bottom: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Waktu Pemesanan",
                                  style: txtR14g,
                                ),
                                Text(
                                  "22-04-2022 17.40",
                                  style: txtR14d,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: 16, left: 24, right: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Keterangan:",
                              style: txtSB12d,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              "Barang belanjaan dapat diambil pada gereja terdaftar!",
                              style: txtR12d,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
