// ignore_for_file: deprecated_member_use

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import 'package:hkbp_app/fontstyle.dart';
import 'package:hkbp_app/screens/menu/ibadah/daftar/components/txtfield.dart';

class DottedBtn extends StatefulWidget {
  const DottedBtn({
    Key? key,
  }) : super(key: key);

  @override
  State<DottedBtn> createState() => _DottedBtnState();
}

class _DottedBtnState extends State<DottedBtn> {
  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: const Radius.circular(12),
      dashPattern: const [8, 4],
      strokeWidth: 1,
      color: blueColor,
      child: SizedBox(
        height: 30,
        child: TextButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.add,
                color: blueColor,
                size: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 6),
                child: Text(
                  "Tambah Peserta",
                  style: txtSM12b,
                ),
              ),
            ],
          ),
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    scrollable: true,
                    titlePadding: const EdgeInsets.only(
                        top: 20, bottom: 0, left: 16, right: 16),
                    contentPadding: const EdgeInsets.only(
                        top: 0, bottom: 0, left: 16, right: 16),
                    actionsPadding: const EdgeInsets.only(
                        top: 0, bottom: 20, left: 9, right: 9),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.of(context).pop(),
                          child: Icon(
                            Icons.close_rounded,
                            size: 10,
                            color: darkColor,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 90),
                          child: Text(
                            'Nama Peserta',
                            style: txtSM14d,
                          ),
                        ),
                      ],
                    ),
                    content: Form(
                      child: Column(
                        children: [
                          TxtField(
                            hintTxt: "Masukan nama",
                            hintStyle: txtR12l,
                            readOnly: false,
                          ),
                        ],
                      ),
                    ),
                    actions: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 134,
                            height: 33,
                            child: OutlineButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              borderSide: BorderSide(color: blueColor),
                              onPressed: () => Navigator.of(context).pop(),
                              child: Text(
                                "Batalkan",
                                style: txtM12b,
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          SizedBox(
                            width: 134,
                            height: 33,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: blueColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Text(
                                "Daftar",
                                style: txtM12w,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      )
                    ],
                  );
                });
          },
        ),
      ),
    );
  }
}
