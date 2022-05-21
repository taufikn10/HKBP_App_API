import 'package:flutter/material.dart';
import 'package:hkbp_app/components/background.dart';
import 'package:hkbp_app/components/rounded_btn.dart';
import 'package:hkbp_app/fontstyle.dart';
import 'package:hkbp_app/models/kegiatan_tile.dart';
import 'package:hkbp_app/screens/menu/kegiatan/details/pin/pin_pembayaran.dart';

import 'listdatarow.dart';

class BodyDetail extends StatelessWidget {
  final Kegiatan kegiatan;
  const BodyDetail({
    Key? key,
    required this.kegiatan,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    kegiatan.image,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                    height: 230,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 24, right: 24, top: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          kegiatan.title,
                          style: txtSM16d,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16, bottom: 6),
                          child: Row(
                            children: [
                              Text(
                                "Diterbitkan",
                                style: txtM10d,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                "05 April 2022, 14:35 WIB",
                                style: txtR10d,
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "Ditutup",
                              style: txtM10d,
                            ),
                            const SizedBox(width: 25),
                            Text(
                              "02 Agustus 2022",
                              style: txtR10d,
                            ),
                            const SizedBox(width: 2),
                            Text(
                              "(7 hari lagi)",
                              style: txtR10r,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 6),
                          child: Row(
                            children: [
                              Text(
                                "Kode",
                                style: txtM10d,
                              ),
                              const SizedBox(width: 36),
                              Text(
                                "KGT-002",
                                style: txtR10d,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24, right: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 16, bottom: 8),
                          child: ListDataRow(
                            txtName: 'Nama Kegiatan',
                            onlyPadding: EdgeInsets.only(left: 13, right: 3),
                            txtDetail: 'Partangiangan Wijk',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 8),
                          child: ListDataRow(
                            txtName: 'Tanggal',
                            onlyPadding: EdgeInsets.only(left: 61, right: 3),
                            txtDetail: '4 Agustus 2022',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 8),
                          child: ListDataRow(
                            txtName: 'Waktu',
                            onlyPadding: EdgeInsets.only(left: 72, right: 3),
                            txtDetail: '09:00 - Selesai',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 8),
                          child: ListDataRow(
                            txtName: 'Lokasi',
                            onlyPadding: EdgeInsets.only(left: 71, right: 3),
                            txtDetail:
                                'Villa Sejuk Bali, Jl. Wisata Iman No.1, Tebet, Jakarta Selatan',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 8),
                          child: ListDataRow(
                            txtName: 'Keterangan',
                            onlyPadding: EdgeInsets.only(left: 38, right: 3),
                            txtDetail: 'Dresscode - Baju Merah',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 8),
                          child: ListDataRow(
                            txtName: 'Nama PIC',
                            onlyPadding: EdgeInsets.only(left: 48, right: 3),
                            txtDetail: 'Ny. Elisa Sinaga',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 8),
                          child: ListDataRow(
                            txtName: 'Nomor Kontak',
                            onlyPadding: EdgeInsets.only(left: 19, right: 3),
                            txtDetail: '0897 6151 7887',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 24),
                          child: ListDataRow(
                            txtName: 'Biaya Kontribusi',
                            onlyPadding: EdgeInsets.only(left: 8, right: 3),
                            txtDetail: 'Rp 1,-',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 24, left: 8, right: 8),
                    child: RoundedButton(
                      child: StyleBtn(
                        txtBtn: "Daftar",
                        pressBtn: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const PinPendaftaran()));
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                right: 10,
                top: 10,
                child: Icon(
                  Icons.bookmark_outline_rounded,
                  color: whiteColor,
                ),
              ),
              Positioned(
                right: 40,
                top: 10,
                child: Icon(
                  Icons.share_outlined,
                  color: whiteColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
