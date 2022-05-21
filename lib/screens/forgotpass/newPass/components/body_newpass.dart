import 'package:flutter/material.dart';
import 'package:hkbp_app/components/background.dart';
import 'package:hkbp_app/components/border_input.dart';
import 'package:hkbp_app/fontstyle.dart';

import '../../../../components/rounded_btn.dart';
import '../../../login/login_page.dart';

class BodyNewPass extends StatelessWidget {
  const BodyNewPass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 24,
            ),
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
                        "Buat Kata Sandi",
                        style: txtSM16b,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 16, left: 16, right: 16),
                      child: TextFieldContainer(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Kata sandi baru",
                            border: InputBorder.none,
                          ),
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.next,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: TextFieldContainer(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Ulangi kata sandi",
                            border: InputBorder.none,
                          ),
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 24),
                      child: RoundedButton(
                        child: StyleBtn(
                          txtBtn: "Daftar",
                          pressBtn: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()));
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
