import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hkbp_app/components/background.dart';
import 'package:hkbp_app/components/rounded_btn.dart';
import 'package:hkbp_app/fontstyle.dart';
import 'package:hkbp_app/screens/menu/persembahan/pembayaran/pin_pembayaran.dart';
import 'package:intl/intl.dart';

class Body extends StatefulWidget {
  final dynamic dataTheme;
  final Widget child;

  const Body({
    Key? key,
    this.dataTheme,
    required this.child,
  }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _inputNominal = TextEditingController();
  static const _locale = 'en_US';
  String _formatNumber(String s) =>
      NumberFormat.decimalPattern(_locale).format(int.parse(s));
  String get _currency =>
      NumberFormat.compactSimpleCurrency(locale: "id").currencySymbol;

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              "“Berilah kepada Tuhan kemuliaan nama-Nya, bawalah persembahan an masuklah menghadap Dia! Sujudlah menyembah kepada Tuhan dengan berhiaskankekudusan”",
              textAlign: TextAlign.justify,
              style: txtR12d,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 24, top: 6, bottom: 16),
              child: Text(
                "Tawarikh 16:29",
                style: txtR12Id,
              ),
            ),
          ),
          // scroll
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 24, bottom: 12),
                      child: Text(
                        "Jenis Persembahan",
                        style: txtSM14d,
                      ),
                    ),
                  ),
                  //theme
                  Theme(data: widget.dataTheme, child: widget.child),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 24, right: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: Text(
                              "Nominal Persembahan",
                              style: txtSM14d,
                            ),
                          ),
                          Container(
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
                                    style: txtR12d,
                                    decoration: InputDecoration(
                                      hintText: "0",
                                      hintStyle: txtR12l,
                                      prefixIcon: Text(
                                        _currency + ".",
                                        style: txtR12l,
                                      ),
                                      prefixIconConstraints:
                                          const BoxConstraints(
                                              minWidth: 0, minHeight: 0),
                                      border: InputBorder.none,
                                    ),
                                    controller: _inputNominal,
                                    onChanged: (string) {
                                      string = _formatNumber(
                                          string.replaceAll(",", ""));
                                      _inputNominal.value = TextEditingValue(
                                        text: string,
                                        selection: TextSelection.collapsed(
                                            offset: string.length),
                                      );
                                    },
                                    keyboardType: TextInputType.number,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 24, right: 24, bottom: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: Text(
                              "Keterangan",
                              style: txtSM14d,
                            ),
                          ),
                          Container(
                            height: 100,
                            decoration: BoxDecoration(
                              color: const Color(0xffF9F9FB),
                              borderRadius: BorderRadius.circular(12),
                              border:
                                  Border.all(color: const Color(0xffCACACA)),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              child: TextField(
                                style: txtR12d,
                                decoration: InputDecoration(
                                  hintText: "Tulis Keterangan",
                                  hintStyle: GoogleFonts.inter(
                                    color: const Color(0xffCACACA),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                  ),
                                  border: InputBorder.none,
                                ),
                                maxLines: null,
                                keyboardType: TextInputType.multiline,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 24, left: 8, right: 8),
            child: RoundedButton(
              child: StyleBtn(
                txtBtn: "Bayar",
                pressBtn: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PinPembayaranPage()));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
