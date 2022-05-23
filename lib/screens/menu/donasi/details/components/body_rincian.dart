import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:hkbp_app/components/background.dart';
import 'package:hkbp_app/fontstyle.dart';
import 'package:hkbp_app/screens/menu/donasi/details/pin/pin_donasi.dart';
import 'package:intl/intl.dart';

class BodyRincianDonasi extends StatefulWidget {
  final dynamic donasiImg;
  const BodyRincianDonasi({
    Key? key,
    this.donasiImg,
  }) : super(key: key);

  @override
  State<BodyRincianDonasi> createState() => _BodyRincianDonasiState();
}

class _BodyRincianDonasiState extends State<BodyRincianDonasi> {
  final _inputDonasi = TextEditingController();
  static const _locale = 'en_US';
  String _formatNumber(String s) =>
      NumberFormat.decimalPattern(_locale).format(int.parse(s));
  String get _currency =>
      NumberFormat.compactSimpleCurrency(locale: 'id').currencySymbol;

  @override
  Widget build(BuildContext context) {
    List donasi = widget.donasiImg['img'];
    return Background(
      child: Align(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        GFCarousel(
                          items: donasi.map(
                            (url) {
                              return Container(
                                margin: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(5.0)),
                                  child: Image.asset(
                                    url,
                                    fit: BoxFit.cover,
                                    width: double.infinity,
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
                          autoPlay: true,
                          hasPagination: true,
                          passiveIndicator: greyColor,
                          activeIndicator: whiteColor,
                          viewportFraction: 1.1,
                        ),
                        Positioned(
                          right: 40,
                          top: 15,
                          child: Icon(
                            Icons.share_outlined,
                            color: whiteColor,
                          ),
                        ),
                        Positioned(
                          right: 10,
                          top: 15,
                          child: Icon(
                            Icons.bookmark_outline,
                            color: whiteColor,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 16, bottom: 24, left: 24, right: 24),
                      child: Column(
                        children: [
                          Text(
                            widget.donasiImg['title'],
                            style: txtSB16d,
                            textAlign: TextAlign.justify,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16, bottom: 6),
                            child: Row(
                              children: [
                                Text(
                                  "Diterbitkan",
                                  style: txtM10d,
                                  textAlign: TextAlign.justify,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Text(
                                    widget.donasiImg['diterbitkan'],
                                    style: txtR10d,
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "Ditutup",
                                style: txtM10d,
                                textAlign: TextAlign.justify,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: Text(
                                  widget.donasiImg['ditutup'],
                                  style: txtR10d,
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                              const SizedBox(width: 2),
                              Text(
                                "(4 hari lagi)",
                                style: txtR10r,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6, bottom: 24),
                            child: Row(
                              children: [
                                Text(
                                  "Kode",
                                  style: txtM10d,
                                  textAlign: TextAlign.justify,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 36),
                                  child: Text(
                                    widget.donasiImg['kode'],
                                    style: txtR10d,
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            widget.donasiImg['description'],
                            style: txtR14d,
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Masukan nominal donasi",
                      style: txtR12d,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xffF9F9FB),
                              borderRadius: BorderRadius.circular(12),
                              border:
                                  Border.all(color: const Color(0xffCACACA)),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              child: SizedBox(
                                height: 33,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 0, bottom: 2),
                                  child: TextField(
                                    controller: _inputDonasi,
                                    onChanged: (string) {
                                      string = _formatNumber(
                                          string.replaceAll(",", ""));
                                      _inputDonasi.value = TextEditingValue(
                                        text: string,
                                        selection: TextSelection.collapsed(
                                            offset: string.length),
                                      );
                                    },
                                    style: txtR12d,
                                    decoration: InputDecoration(
                                      hintText: "0",
                                      hintStyle: txtR12l,
                                      border: InputBorder.none,
                                      prefixIcon: Text(
                                        _currency + ".",
                                        style: txtR12l,
                                      ),
                                      prefixIconConstraints:
                                          const BoxConstraints(
                                              minWidth: 0, minHeight: 0),
                                    ),
                                    keyboardType: TextInputType.number,
                                  ),
                                ),
                              ),
                            ),
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
                                    builder: (context) => const PinDonasi()));
                          },
                          child: Text(
                            "Daftar",
                            style: txtM12w,
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
      ),
    );
  }
}
