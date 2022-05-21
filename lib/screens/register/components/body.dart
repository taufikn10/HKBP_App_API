import 'package:flutter/material.dart';
import 'package:hkbp_app/components/background.dart';
import 'package:hkbp_app/components/rounded_btn.dart';
import 'package:hkbp_app/components/rounded_input.dart';
import 'package:hkbp_app/components/border_input.dart';
import 'package:hkbp_app/fontstyle.dart';
import 'package:hkbp_app/screens/login/login_page.dart';

import '../confirm/confirm_page.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

List<DropdownMenuItem<String>> get dropdownItems {
  List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(
        child: Text("Gereja HKBP Distrik VIII - Tebet"), value: "1"),
    const DropdownMenuItem(
        child: Text("Gereja HKBP Distrik VIII - Tebet2"), value: "2"),
    const DropdownMenuItem(
        child: Text("Gereja HKBP Distrik VIII - Tebet3"), value: "3"),
    const DropdownMenuItem(
        child: Text("Gereja HKBP Distrik VIII - Tebet4"), value: "4"),
  ];
  return menuItems;
}

class _BodyState extends State<Body> {
  String selectedValue = "1";
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
                        "Daftar",
                        style: txtSM16b,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 16),
                      child: RoundedInput(
                        hintText: "Nama sesuai KTP",
                        keyboardType: TextInputType.name,
                        inputAction: TextInputAction.next,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 16),
                      child: RoundedInput(
                        hintText: "Email",
                        keyboardType: TextInputType.emailAddress,
                        inputAction: TextInputAction.next,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 16, left: 16, right: 16),
                      child: TextFieldContainer(
                        child: DropdownButtonFormField(
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                            ),
                            style: txtR14d,
                            elevation: 0,
                            value: selectedValue,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedValue = newValue!;
                              });
                            },
                            items: dropdownItems),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 16),
                      child: RoundedInput(
                        hintText: "Nomor telepon",
                        keyboardType: TextInputType.number,
                        inputAction: TextInputAction.next,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 16, left: 16, right: 16),
                      child: TextFieldContainer(
                        child: TextField(
                          style: txtR14d,
                          decoration: InputDecoration(
                            hintText: "Kata sandi",
                            hintStyle: txtR14l,
                            border: InputBorder.none,
                          ),
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.next,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: TextFieldContainer(
                        child: TextField(
                          style: txtR14d,
                          decoration: InputDecoration(
                            hintText: "Ulangi kata sandi",
                            hintStyle: txtR14l,
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
                                    builder: (context) => const ConfirmPage()));
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
                    "Sudah Punya Akun ? ",
                    style: txtSM12d,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()));
                    },
                    child: Text(
                      "Masuk",
                      style: txtSM12b,
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
