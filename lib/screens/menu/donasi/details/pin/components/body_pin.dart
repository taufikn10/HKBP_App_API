import 'package:flutter/material.dart';
import 'package:hkbp_app/components/background.dart';
import 'package:hkbp_app/components/input_pin.dart';
import 'package:hkbp_app/fontstyle.dart';
import 'package:hkbp_app/screens/menu/donasi/details/success/sucess_donasi.dart';

class BodyPin extends StatefulWidget {
  const BodyPin({Key? key}) : super(key: key);

  @override
  State<BodyPin> createState() => _BodyPinState();
}

class _BodyPinState extends State<BodyPin> {
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Buat Kode Keamananan",
            style: txtSM18d,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 47),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InputPin(
                      auto: true,
                      onChanged: (value) {
                        nextField(value: value, focusNode: pin2FocusNode);
                      },
                    ),
                    InputPin(
                      auto: false,
                      focusNode: pin2FocusNode,
                      onChanged: (value) {
                        nextField(value: value, focusNode: pin3FocusNode);
                      },
                    ),
                    InputPin(
                      auto: false,
                      focusNode: pin3FocusNode,
                      onChanged: (value) {
                        nextField(value: value, focusNode: pin4FocusNode);
                      },
                    ),
                    InputPin(
                      auto: false,
                      focusNode: pin4FocusNode,
                      onChanged: (value) {
                        nextField(value: value, focusNode: pin5FocusNode);
                      },
                    ),
                    InputPin(
                      auto: false,
                      focusNode: pin5FocusNode,
                      onChanged: (value) {
                        nextField(value: value, focusNode: pin6FocusNode);
                      },
                    ),
                    SizedBox(
                      width: 30,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "●",
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                            color: greyColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        // obscureText: true,
                        // obscuringCharacter: '●',
                        style: TextStyle(
                          fontSize: 16,
                          color: darkColor,
                          fontWeight: FontWeight.w600,
                        ),
                        focusNode: pin6FocusNode,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        // onChanged: (value) {
                        //   pin6FocusNode!.unfocus();
                        // },
                        onSubmitted: (String value) async {
                          //FocusScope.of(context).unfocus();
                          await Future.delayed(const Duration(seconds: 1));
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SuccessDonasi()));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: GestureDetector(
              onTap: () {},
              child: Text(
                "Lupa PIN ?",
                style: txtM14b,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
