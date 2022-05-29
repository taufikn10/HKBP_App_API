import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:hkbp_app/components/background.dart';
import 'package:hkbp_app/fontstyle.dart';
import 'package:intl/intl.dart';

import 'component/rincian_produk.dart';

class DeskripsiBelanjaPage extends StatefulWidget {
  final dynamic descBelanja;
  const DeskripsiBelanjaPage({Key? key, this.descBelanja}) : super(key: key);

  @override
  State<DeskripsiBelanjaPage> createState() => _DeskripsiBelanjaPageState();
}

class _DeskripsiBelanjaPageState extends State<DeskripsiBelanjaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: getBody(),
    );
  }

  Widget getBody() {
    List descBelanjas = widget.descBelanja["img"];
    return Background(
      child: Align(
        alignment: Alignment.topCenter,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SafeArea(
                    child: GFCarousel(
                      items: descBelanjas.map(
                        (url) {
                          return Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(url),
                                fit: BoxFit.fill,
                              ),
                            ),
                          );
                        },
                      ).toList(),
                      onPageChanged: (index) {
                        setState(() {
                          index;
                        });
                      },
                      aspectRatio: 1,
                      autoPlay: false,
                      hasPagination: true,
                      passiveIndicator: greyColor,
                      activeIndicator: blueColor,
                      viewportFraction: 1.1,
                    ),
                  ),
                  Card(
                    elevation: 0,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 16, left: 24, right: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                NumberFormat.currency(
                                        locale: 'id',
                                        decimalDigits: 0,
                                        symbol: "Rp")
                                    .format(widget.descBelanja["harga"]),
                                style: txtSB16d,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Sisa",
                                    style: txtL12b,
                                  ),
                                  Text(
                                    widget.descBelanja['sisa'].toString(),
                                    style: txtL12b,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12, bottom: 16),
                            child: Text(
                              widget.descBelanja['nama_produk'],
                              style: txtM14d,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 0,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 16, left: 24, right: 24, bottom: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 16),
                            child: Text(
                              "Rincian Produk",
                              style: txtM12d,
                            ),
                          ),
                          RincianProduk(
                            namaRincian: 'Stok',
                            space: 123,
                            hasilRincian: widget.descBelanja["sisa"].toString(),
                          ),
                          RincianProduk(
                            namaRincian: 'Nama Barang',
                            space: 72,
                            hasilRincian: widget.descBelanja["nama_produk"],
                          ),
                          const RincianProduk(
                            namaRincian: 'Merek',
                            space: 113,
                            hasilRincian: "Lembaga Alkitab Indonesia",
                          ),
                          const RincianProduk(
                            namaRincian: 'Bahasa',
                            space: 107,
                            hasilRincian: "Indonesia",
                          ),
                          const RincianProduk(
                            namaRincian: 'Tahun',
                            space: 114,
                            hasilRincian: "2019",
                          ),
                          const RincianProduk(
                            namaRincian: 'Kondisi',
                            space: 108,
                            hasilRincian: "Baru",
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8, left: 24, right: 24, bottom: 12),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          side: BorderSide(width: 1, color: blueColor),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Tambah",
                          style: txtM12b,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SafeArea(
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios_new_rounded, color: darkColor),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
