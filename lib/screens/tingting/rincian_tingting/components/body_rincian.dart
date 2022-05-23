import 'package:flutter/material.dart';
import 'package:hkbp_app/components/background.dart';
import 'package:hkbp_app/fontstyle.dart';
import 'package:hkbp_app/models/tingting_tile.dart';
import 'package:hkbp_app/screens/tingting/rincian_tingting/detail_rincian/jadwal_petugas.dart';
import 'package:hkbp_app/screens/tingting/rincian_tingting/detail_rincian/laporan_keuangan.dart';

class BodyRincianTingting extends StatelessWidget {
  final Tingting tingting;
  const BodyRincianTingting({Key? key, required this.tingting})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> ulangTahun = [
      "Olan Surya Sinaga lahir pada 19 Juni 1991, usia 31 Tahun",
      "Maryo Sandoz lahir pada 17 Juni 1990, Usia 32 Tahun",
      "Maryo Sandoz lahir pada 17 Juni 1990, Usia 32 Tahun",
    ];

    return Background(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Align(
        alignment: Alignment.topLeft,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tingting.jadwal,
                style: txtSB14d,
              ),
              CardMenu(
                tap: () {},
                img: 'assets/images/ic_cross.png',
                txtCard: 'Tata Ibadah Kebaktian',
              ),
              CardMenu(
                tap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LaporanKeuanganPage())),
                img: 'assets/images/ic_report-money.png',
                txtCard: 'Laporan Keuangan',
              ),
              CardMenu(
                tap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const JadwalPetugasPage())),
                img: 'assets/images/ic_calendar-agenda.png',
                txtCard: 'Jadwal Petugas Pelayanan',
              ),
              const RincianTxt(
                txtJudul: "Tema Ibadah Minggu",
                top: 28,
                txtDescription:
                    "A goar ni Minggunta sadari on ima Minggu II Dung Epiphanias. Laos marhite thema minggu sadari on, dijou do hita ruas ni Huria asa mangkangoluhon hasadaon dibagasan naung sada hian ima Debata Ama, Anak, dohot Tondi Parbadia.",
              ),
              const RincianTxt(
                txtJudul: "Turut Berduka Cita",
                top: 24,
                txtDescription:
                    "Telah meninggal Dunia, Bapak Maryanta Pada usia 72 tahun pada pukul 15.00 WIB",
              ),
              const RincianTxt(
                txtJudul: "Pernikahan Jemaat",
                top: 24,
                txtDescription:
                    "Rolan Sinaga, jemaat HKBP Medan Denai akan melaksanakan pernikahan kudus dengan Mega br. Simmangunsong. Pada tanggal 17 Agustus 2022. Jika ada yang merasa keberatan dapat menghubungi sekertariat gereja.",
              ),
              const RincianTxt(
                txtJudul: "Pertunangan Jemaat",
                top: 24,
                txtDescription:
                    "Elisya Rosalina Sihombing, jemaat HKBP Medan Denai akan melaksanakan pertunangan dengan Kevin Saragih Manullang. Pada tanggal 18 Agustus 2022. Jika ada yang merasa keberatan dapat menghubungi sekertariat gereja.",
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24, bottom: 10),
                child: Align(
                  child: Text("Ulang Tahun", style: txtSB16d),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: ulangTahun.length,
                itemBuilder: (context, index) {
                  return Text(
                    '${index + 1}. ${ulangTahun[index]}',
                    style: txtR14d,
                    textAlign: TextAlign.justify,
                  );
                },
              ),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    ));
  }
}

class RincianTxt extends StatelessWidget {
  final String txtJudul;
  final String txtDescription;
  final double top;
  const RincianTxt({
    Key? key,
    required this.txtJudul,
    required this.txtDescription,
    required this.top,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: top, bottom: 10),
          child: Text(
            txtJudul,
            style: txtSB16d,
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            txtDescription,
            style: txtR14d,
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    );
  }
}

class CardMenu extends StatelessWidget {
  final VoidCallback tap;
  final String img;
  final String txtCard;

  const CardMenu({
    Key? key,
    required this.tap,
    required this.img,
    required this.txtCard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          margin: const EdgeInsets.symmetric(vertical: 8),
          elevation: 3,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            child: Row(
              children: [
                Image.asset(
                  img,
                  height: 24,
                ),
                const SizedBox(width: 12),
                Text(
                  txtCard,
                  style: txtSB12d,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
