import 'package:flutter/material.dart';
import 'package:hkbp_app/components/background.dart';
import 'package:hkbp_app/components/topbar.dart';
import 'package:hkbp_app/fontstyle.dart';
import 'package:hkbp_app/list/list_belanja.dart';
import 'package:hkbp_app/screens/menu/belanja/components/line_lightgrey.dart';
import 'package:hkbp_app/screens/menu/belanja/success/success.dart';
import 'package:intl/intl.dart';

class KonfirmasiPembelian extends StatefulWidget {
  const KonfirmasiPembelian({Key? key}) : super(key: key);

  @override
  State<KonfirmasiPembelian> createState() => _KonfirmasiPembelianState();
}

class _KonfirmasiPembelianState extends State<KonfirmasiPembelian> {
  bool _showAdd = true;
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: TopBarDetails(
        txtTitle: "Konfirmasi Pembelian",
        color: whiteColor,
      ),
      body: Background(
          child: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: belanja.length - 7,
              itemBuilder: (context, index) => Container(
                color: whiteColor,
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
                                belanja[index]["img"][0],
                                height: 64,
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    belanja[index]["nama_produk"],
                                    style: txtM14d,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 2, bottom: 0),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Sisa ",
                                          style: txtL12b,
                                        ),
                                        Text(
                                          belanja[index]["sisa"].toString(),
                                          style: txtL12b,
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
                                        style: txtSB12d,
                                      ),
                                      const Spacer(),
                                      !_showAdd
                                          ? OutlinedButton(
                                              style: OutlinedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                side: BorderSide(
                                                    width: 1, color: blueColor),
                                              ),
                                              onPressed: () {
                                                setState(() {
                                                  _showAdd = !_showAdd;
                                                  counter++;
                                                });
                                              },
                                              child: Text(
                                                "Tambah",
                                                style: txtM12b,
                                              ),
                                            )
                                          : SizedBox(
                                              height: 47,
                                              child: Row(
                                                children: [
                                                  counter != 0
                                                      ? Material(
                                                          type: MaterialType
                                                              .transparency,
                                                          child: Ink(
                                                            decoration:
                                                                BoxDecoration(
                                                              border: Border.all(
                                                                  color:
                                                                      blueColor,
                                                                  width: 2.0),
                                                              color: Colors
                                                                  .transparent,
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                            child: InkWell(
                                                              onTap: () {
                                                                setState(() {
                                                                  counter != 0
                                                                      ? counter--
                                                                      : counter;
                                                                  if (counter ==
                                                                      0) {
                                                                    _showAdd =
                                                                        !_showAdd;
                                                                  }
                                                                });
                                                              },
                                                              child: Icon(
                                                                Icons.remove,
                                                                size: 21,
                                                                color:
                                                                    blueColor,
                                                              ),
                                                            ),
                                                          ))
                                                      : Container(),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 12),
                                                    child: Text(
                                                        counter.toString(),
                                                        style: txtR14d),
                                                  ),
                                                  Material(
                                                      type: MaterialType
                                                          .transparency,
                                                      child: Ink(
                                                        decoration:
                                                            BoxDecoration(
                                                          border: Border.all(
                                                              color: blueColor,
                                                              width: 2.0),
                                                          color: Colors
                                                              .transparent,
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: InkWell(
                                                          onTap: () {
                                                            setState(() {
                                                              counter++;
                                                            });
                                                          },
                                                          child: Icon(
                                                            Icons.add,
                                                            size: 21,
                                                            color: blueColor,
                                                          ),
                                                        ),
                                                      )),
                                                ],
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
                      const LineLightgrey(),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              color: whiteColor,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Masih ada yang kurang ?",
                          style: txtSB16d,
                        ),
                        Text(
                          "Yuk tambahin barang yang lain!",
                          style: txtL12d,
                        ),
                      ],
                    ),
                    OutlinedButton(
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
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8),
            Container(
              color: whiteColor,
              child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, top: 16),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  elevation: 2,
                  shadowColor: Colors.grey[300],
                  color: whiteColor,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Masukkan Kode Promo",
                              style: txtSB16,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: blueColor, // background
                                onPrimary: whiteColor, // foreground
                              ),
                              onPressed: () {},
                              child: Text(
                                "Masukan",
                                style: txtM10w,
                              ),
                            )
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: LineLightgrey(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/ic_zipayS.png",
                                  height: 24,
                                ),
                                const SizedBox(width: 12),
                                Text(
                                  "Saldo Zipay",
                                  style: txtSB14d,
                                )
                              ],
                            ),
                            Text(
                              NumberFormat.currency(
                                      locale: 'id',
                                      decimalDigits: 0,
                                      symbol: "Rp ")
                                  .format(300000),
                              style: txtSB14d,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              color: whiteColor,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  shadowColor: Colors.grey[300],
                  color: whiteColor,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16, left: 16, right: 16, bottom: 4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 16),
                              child: Text(
                                "Ringkasan Belanja",
                                style: txtSB14d,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 12),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                            ),
                            Row(
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
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 16),
                              child: LineLightgrey(),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Total Pembayaran",
                                  style: txtR14g,
                                ),
                                Text(
                                  NumberFormat.currency(
                                          locale: 'id',
                                          decimalDigits: 0,
                                          symbol: "Rp")
                                      .format(261000),
                                  style: txtSB14b,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const LineLightgrey(),
                      Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: whiteColor,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(16),
                                    bottomRight: Radius.circular(16))),
                            elevation: 0,
                          ),
                          onPressed: (() => rincianBelanja(context)),
                          child: SizedBox(
                            height: 47,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Lihat Rincian",
                                    style: txtSB14b,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 14,
                                    color: blueColor,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
                color: whiteColor,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 23),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total Harga",
                      style: txtR14d,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            NumberFormat.currency(
                                    locale: 'id',
                                    decimalDigits: 0,
                                    symbol: "Rp")
                                .format(261000),
                            style: txtSB16d,
                          ),
                        ),
                        const SizedBox(width: 8),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: blueColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 0,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 44, vertical: 10),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SuccessBuyPage(),
                                ));
                          },
                          child: Text(
                            "Bayar",
                            style: txtM14w,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }

  Future<dynamic> rincianBelanja(BuildContext context) {
    return showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(16.0), topLeft: Radius.circular(16.0)),
        ),
        context: context,
        builder: (BuildContext context) {
          return Align(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(
                          Icons.close_rounded,
                          size: 20,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 28),
                          child: Text(
                            "Rincian Belanja",
                            style: txtSB16d,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
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
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: LineLightgrey(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
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
                        padding: const EdgeInsets.symmetric(vertical: 16),
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
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total Pembayaran",
                              style: txtR14g,
                            ),
                            Text(
                              NumberFormat.currency(
                                      locale: 'id',
                                      decimalDigits: 0,
                                      symbol: "Rp ")
                                  .format(261000),
                              style: txtSB14b,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const LineLightgrey(),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 16, bottom: 24, left: 24, right: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Barang yang dibeli",
                        style: txtM14d,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 12, bottom: 6),
                                child: Text(
                                  "Alkitab Sedang 052 TI",
                                  style: txtM12d,
                                ),
                              ),
                              Text(
                                "1 x ${NumberFormat.currency(locale: 'id', decimalDigits: 0, symbol: "Rp ").format(261000)}",
                                style: txtR12d,
                              ),
                            ],
                          ),
                          Text(
                            NumberFormat.currency(
                                    locale: 'id',
                                    decimalDigits: 0,
                                    symbol: "Rp ")
                                .format(261000),
                            style: txtSB14b,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 12, bottom: 6),
                                child: Text(
                                  "Hosti Polos",
                                  style: txtM12d,
                                ),
                              ),
                              Text(
                                "4 x ${NumberFormat.currency(locale: 'id', decimalDigits: 0, symbol: "Rp ").format(1500)}",
                                style: txtR12d,
                              ),
                            ],
                          ),
                          Text(
                            NumberFormat.currency(
                                    locale: 'id',
                                    decimalDigits: 0,
                                    symbol: "Rp ")
                                .format(6000),
                            style: txtSB14b,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}
