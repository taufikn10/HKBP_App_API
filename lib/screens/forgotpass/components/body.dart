import 'package:flutter/material.dart';
import 'package:hkbp_app/components/background.dart';
import 'package:hkbp_app/components/rounded_btn.dart';
import 'package:hkbp_app/components/rounded_input.dart';
import 'package:hkbp_app/fontstyle.dart';
import 'package:hkbp_app/screens/forgotpass/forgotOtp/forgotOtp_page.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(
                left: 24,
                right: 24,
              ),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 24,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24),
                      child: Text(
                        "Lupa Kata Sandi",
                        style: txtSM16b,
                      ),
                    ),
                    const RoundedInput(
                      hintText: "Email",
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 24),
                      child: RoundedButton(
                        child: StyleBtn(
                          txtBtn: "Kirim",
                          pressBtn: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ForgotOtpPage()));
                          },
                        ),
                      ),
                    ),
                  ],
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
                    "Apa itu lupa kata sandi ? ",
                    style: txtSM12d,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Kontak kami",
                      style: txtB12b,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
