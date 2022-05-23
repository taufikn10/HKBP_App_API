import 'package:flutter/material.dart';
import 'package:hkbp_app/components/background.dart';
import 'package:hkbp_app/components/rounded_btn.dart';
import 'package:hkbp_app/components/rounded_input.dart';
import 'package:hkbp_app/components/border_input.dart';
import 'package:hkbp_app/fontstyle.dart';
import 'package:hkbp_app/screens/forgotpass/forgot_page.dart';
import 'package:hkbp_app/screens/register/register_page.dart';

import '../../../components/navbar.dart';

class Body extends StatefulWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool _secureText = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  "Gereja HKBP Huria \n Kristen Batak Protestan",
                  textAlign: TextAlign.center,
                  style: txtSB16d,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  bottom: 20,
                ),
                child: Image.asset(
                  'assets/images/ic_hkbp.png',
                  height: size.height * 0.25,
                ),
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
                        padding: const EdgeInsets.all(16),
                        child: Text(
                          "Masuk",
                          style: txtSB16b,
                        ),
                      ),
                      const RoundedInput(
                        hintText: "Email",
                        keyboardType: TextInputType.emailAddress,
                        inputAction: TextInputAction.next,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 16),
                        child: TextFieldContainer(
                          child: TextField(
                            style: txtR14d,
                            decoration: InputDecoration(
                              hintText: "Kata Sandi",
                              hintStyle: txtR14l,
                              border: InputBorder.none,
                              contentPadding: const EdgeInsets.only(
                                top: 15,
                              ),
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _secureText = !_secureText;
                                  });
                                },
                                child: Icon(
                                  _secureText
                                      ? Icons.visibility_off_outlined
                                      : Icons.visibility_outlined,
                                  color: const Color(0xff999999),
                                  size: 21,
                                ),
                              ),
                            ),
                            obscureText: _secureText,
                            keyboardType: TextInputType.visiblePassword,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 20,
                              bottom: 12,
                            ),
                            child: GestureDetector(
                              child: Text(
                                "Lupa Kata Sandi ?",
                                style: txtSB12d,
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) {
                                    return const ForgotPage();
                                  }),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      RoundedButton(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: blueColor,
                          ),
                          child: Text(
                            'Masuk',
                            style: txtM14w,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Navbar()));
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 20,
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
                      "Belum Punya Akun ? ",
                      style: txtSB12d,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisterPage()));
                      },
                      child: Text(
                        "Daftar",
                        style: txtB12b,
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
