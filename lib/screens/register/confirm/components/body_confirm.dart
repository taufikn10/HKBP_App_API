import 'package:flutter/material.dart';
import 'package:hkbp_app/components/background.dart';
import 'package:hkbp_app/components/rounded_btn.dart';
import 'package:hkbp_app/fontstyle.dart';

import '../registerotp_page.dart';

class BodyConfirm extends StatelessWidget {
  const BodyConfirm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Text(
                    "Konfirmasi Akun Zipay",
                    style: txtSB18d,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24, bottom: 40),
                  child: Image.asset(
                    "assets/images/ic_zipay.png",
                    height: 45,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 31),
                    child: Text(
                      "Kamu akan difasilitasi pembuatan akun Zipay sebagai pembayaran elektronik. Hal ini dilakukan untuk membantu proses transaksi pembayaran pada aplikasi ini.",
                      textAlign: TextAlign.center,
                      style: txtR14d,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 24,
                    bottom: 24,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Baca kebijakan privasi Zipay ",
                        style: txtSB12d,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "disini",
                          style: txtSB12b,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: RoundedButton(
                    child: StyleBtn(
                      txtBtn: "Lanjutkan",
                      pressBtn: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisterOtpPage()));
                      },
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 24, horizontal: 33),
                  child: Text(
                    "Zipay telah resmi tercatat di OJK sebagai penyelenggara uang elektronik dengan Nomor : S-101/MS.72/2019",
                    textAlign: TextAlign.center,
                    style: txtR10d,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
