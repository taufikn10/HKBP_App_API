import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hkbp_app/components/background.dart';
import 'package:hkbp_app/fontstyle.dart';
import 'package:hkbp_app/list/list_belanja.dart';
import 'package:hkbp_app/screens/menu/belanja/components/controllers/cart_controller.dart';
import 'package:hkbp_app/screens/menu/belanja/components/line_lightgrey.dart';
import 'package:hkbp_app/screens/menu/belanja/deskripsi/desk_belanja_page.dart';
import 'package:hkbp_app/screens/menu/belanja/konfirmasi/konfirmasi_page.dart';
import 'package:intl/intl.dart';

class BodyBelanja extends StatefulWidget {
  const BodyBelanja({Key? key}) : super(key: key);

  @override
  State<BodyBelanja> createState() => _BodyBelanjaState();
}

class _BodyBelanjaState extends State<BodyBelanja> {
  bool _showAdd = true;
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Align(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: belanja.length,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DeskripsiBelanjaPage(
                            descBelanja: belanja[index],
                          ),
                        ));
                  },
                  child: Container(
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
                                                .format(
                                                    belanja[index]["harga"]),
                                            style: txtSB12d,
                                          ),
                                          const Spacer(),
                                          _showAdd
                                              ? OutlinedButton(
                                                  style:
                                                      OutlinedButton.styleFrom(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                    ),
                                                    side: BorderSide(
                                                        width: 1,
                                                        color: blueColor),
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
                                                                      width:
                                                                          2.0),
                                                                  color: Colors
                                                                      .transparent,
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child: InkWell(
                                                                  onTap: () {
                                                                    setState(
                                                                        () {
                                                                      counter !=
                                                                              0
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
                                                                    Icons
                                                                        .remove,
                                                                    size: 21,
                                                                    color:
                                                                        blueColor,
                                                                  ),
                                                                ),
                                                              ))
                                                          : Container(),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
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
                                                                  counter++;
                                                                });
                                                              },
                                                              child: Icon(
                                                                Icons.add,
                                                                size: 21,
                                                                color:
                                                                    blueColor,
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
              ),
            ),
            _showAdd ? Container() : showModalSheet(),
          ],
        ),
      ),
    );
  }

  Container showModalSheet() {
    return Container(
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
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 23),
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
                            locale: 'id', decimalDigits: 0, symbol: "Rp")
                        .format(200000),
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
                          builder: (context) => const KonfirmasiPembelian(),
                        ));
                  },
                  child: Text(
                    "Bayar ($counter)",
                    style: txtM14w,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
