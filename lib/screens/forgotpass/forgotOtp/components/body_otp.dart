import 'package:flutter/material.dart';
import 'package:hkbp_app/components/background.dart';
import 'package:hkbp_app/components/text_pin.dart';
import 'package:hkbp_app/fontstyle.dart';
import 'package:hkbp_app/screens/forgotpass/newPass/newpass_page.dart';

class BodyForgotOtp extends StatefulWidget {
  const BodyForgotOtp({Key? key}) : super(key: key);

  @override
  State<BodyForgotOtp> createState() => _BodyForgotOtpState();
}

class _BodyForgotOtpState extends State<BodyForgotOtp> {
  FocusNode? pin2FocusNode;
  FocusNode? pin3FocusNode;
  FocusNode? pin4FocusNode;
  FocusNode? pin5FocusNode;
  FocusNode? pin6FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
    pin5FocusNode = FocusNode();
    pin6FocusNode = FocusNode();
  }

  @override
  void dispose() {
    pin2FocusNode!.dispose();
    pin3FocusNode!.dispose();
    pin4FocusNode!.dispose();
    pin5FocusNode!.dispose();
    super.dispose();
  }

  void nextField({String? value, FocusNode? focusNode}) {
    if (value?.length == 1) {
      focusNode!.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  "Masukan Kode Verifikasi",
                  style: txtB18d,
                ),
                const SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: txtR12g,
                      children: <TextSpan>[
                        const TextSpan(
                            text:
                                "Kami telah mengirimkan kode verifikasi melalui email ke "),
                        TextSpan(
                          text: "sandoz.maryo@gmail.com",
                          style: txtSM12g,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 70, left: 70, top: 90),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextPin(
                        focus: true,
                        onChange: (value) {
                          nextField(value: value, focusNode: pin2FocusNode);
                        },
                      ),
                      TextPin(
                        focus: false,
                        focusNodee: pin2FocusNode,
                        onChange: (value) {
                          nextField(value: value, focusNode: pin3FocusNode);
                        },
                      ),
                      TextPin(
                        focus: false,
                        focusNodee: pin3FocusNode,
                        onChange: (value) {
                          nextField(value: value, focusNode: pin4FocusNode);
                        },
                      ),
                      TextPin(
                        focus: false,
                        focusNodee: pin4FocusNode,
                        onChange: (value) {
                          nextField(value: value, focusNode: pin5FocusNode);
                        },
                      ),
                      TextPin(
                        focus: false,
                        focusNodee: pin5FocusNode,
                        onChange: (value) {
                          nextField(value: value, focusNode: pin6FocusNode);
                        },
                      ),
                      TextPin(
                        // onChange: (value) {
                        //   pin6FocusNode!.unfocus();
                        // },
                        focusNodee: pin6FocusNode,
                        onSubmit: (String value) async {
                          //FocusScope.of(context).unfocus();
                          await Future.delayed(const Duration(seconds: 1));
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const NewPassPage()));
                        },
                        focus: false,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Tidak menerima kode ? Kirim ulang",
                      style: txtM14b,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
