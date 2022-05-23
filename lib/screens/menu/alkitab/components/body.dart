import 'package:flutter/material.dart';
import 'package:hkbp_app/fontstyle.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        <Widget>[
          Padding(
            padding:
                const EdgeInsets.only(top: 8, bottom: 24, left: 24, right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Allah menciptakan langit dan bumi serta isinya",
                  style: txtSB16d,
                  textAlign: TextAlign.justify,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 24),
                  child: Text(
                    "1:1-2:7",
                    style: txtSB16d,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        child: Transform.translate(
                          offset: const Offset(1, -4),
                          child: Text(
                            '1',
                            textScaleFactor: 0.8,
                            style: txtSB14dh,
                          ),
                        ),
                      ),
                      TextSpan(
                        text: "Pada mulanya Allah menciptakan langit dan bumi.",
                        style: txtR14dh,
                      ),
                      WidgetSpan(
                        child: Transform.translate(
                          offset: const Offset(1, -4),
                          child: Text(
                            '2',
                            textScaleFactor: 0.8,
                            style: txtSB14dh,
                          ),
                        ),
                      ),
                      TextSpan(
                        text:
                            "Bumi belum berbentuk dan kosong; gelap gulita menutupi samudera raya, dan Roh Allah melayang-layang di atas permukaan air.",
                        style: txtR14dh,
                      ),
                      WidgetSpan(
                        child: Transform.translate(
                          offset: const Offset(1, -4),
                          child: Text(
                            '3',
                            textScaleFactor: 0.8,
                            style: txtSB14dh,
                          ),
                        ),
                      ),
                      TextSpan(
                        text:
                            "Berfirmanlah Allah: ”Jadilah terang.” Lalu terang itu jadi. 4Allah melihat bahwa terang itu baik, lalu dipisahkan-Nyalah terang itu dari gelap. 5Dan Allah menamai terang itu siang, dan gelap itu malam. Jadilah petang dan jadilah pagi, itulah hari pertama. 6Berfirmanlah Allah: ”Jadilah cakrawala di tengah segala air untuk memisahkan air dari air.” 7Maka Allah menjadikan cakrawala dan Ia memisahkan air yang ada di bawah cakrawala itu dari air yang ada di atasnya. Dan jadilah demikian. 8Lalu Allah menamai cakrawala itu langit. Jadilah petang dan jadilah pagi, itulah hari kedua. 9Berfirmanlah Allah: ”Hendaklah segala air yang di bawah langit berkumpul pada satu tempat, sehingga kelihatan yang kering.” Dan jadilah demikian. 10Lalu Allah menamai yang kering itu darat, dan kumpulan air itu dinamai-Nya laut. Allah melihat bahwa semuanya itu baik. 11Berfirmanlah Allah: ”Hendaklah tanah menumbuhkan tunas-tunas muda, tumbuh-tumbuhan yang berbiji, segala jenis pohon buah-buahan yang menghasilkan buah yang berbiji, supaya ada tumbuh-tumbuhan di bumi.” Dan jadilah demikian. 12Tanah itu menumbuhkan tunas-tunas muda, segala jenis tumbuh-tumbuhan yang berbiji dan segala jenis pohon-pohonan yang menghasilkan buah yang berbiji. Allah melihat bahwa semuanya itu baik. 13Jadilah petang dan jadilah pagi, itulah hari ketiga. 14Berfirmanlah Allah: ”Jadilah benda-benda penerang pada cakrawala untuk memisahkan siang dari malam. Biarlah benda-benda penerang itu menjadi tanda yang menunjukkan masa-masa yang tetap dan hari-hari dan tahun-tahun, 15dan sebagai penerang pada cakrawala biarlah benda-benda itu menerangi bumi.” Dan jadilah demikian. 16Maka Allah menjadikan kedua benda penerang yang besar itu, yakni yang lebih besar untuk menguasai siang dan yang lebih kecil untuk menguasai malam, dan menjadikan juga bintang-bintang. 17Allah menaruh semuanya itu di cakrawala untuk menerangi bumi, 18dan untuk menguasai siang dan malam, dan untuk memisahkan terang dari gelap. Allah melihat bahwa semuanya itu baik. 19Jadilah petang dan jadilah pagi, itulah hari keempat. 20Berfirmanlah Allah: ”Hendaklah dalam air berkeriapan makhluk yang hidup, dan hendaklah burung beterbangan di atas bumi melintasi cakrawala.” 21Maka Allah menciptakan binatang-binatang laut yang besar dan segala jenis makhluk hidup yang bergerak, yang berkeriapan dalam air, dan segala jenis burung yang bersayap. Allah melihat bahwa semuanya itu baik. 22Lalu Allah memberkati semuanya itu, firman-Nya: ”Berkembangbiaklah dan bertambah banyaklah serta penuhilah air dalam laut, dan hendaklah burung-burung di bumi bertambah banyak.” 23Jadilah petang dan jadilah pagi, itulah hari kelima. 24Berfirmanlah Allah: ”Hendaklah bumi mengeluarkan segala jenis makhluk yang hidup, ternak dan binatang melata dan segala jenis binatang liar.” Dan jadilah demikian. 25Allah menjadikan segala jenis binatang liar dan segala jenis ternak dan segala jenis binatang melata di muka bumi. Allah melihat bahwa semuanya itu baik. 26Berfirmanlah Allah: ”Baiklah Kita menjadikan manusia menurut gambar dan rupa Kita, supaya mereka berkuasa atas ikan-ikan di laut dan burung-burung di udara dan atas ternak dan atas seluruh bumi dan atas segala binatang melata yang merayap di bumi.” 27Maka Allah menciptakan manusia itu menurut gambar-Nya, menurut gambar Allah diciptakan-Nya dia; laki-laki dan perempuan diciptakan-Nya mereka. 28Allah memberkati mereka, lalu Allah berfirman kepada mereka: ”Beranakcuculah dan bertambah banyak; penuhilah bumi dan taklukkanlah itu, berkuasalah atas ikan-ikan di laut dan burung-burung di udara dan atas segala binatang yang merayap di bumi.” 29Berfirmanlah Allah: ”Lihatlah, Aku memberikan kepadamu segala tumbuh-tumbuhan yang berbiji di seluruh bumi dan segala pohon-pohonan yang buahnya berbiji; itulah akan menjadi makananmu. 30Tetapi kepada segala binatang di bumi dan segala burung di udara dan segala yang merayap di bumi, yang bernyawa, Kuberikan segala tumbuh-tumbuhan hijau menjadi makanannya.” Dan jadilah demikian. 31Maka Allah melihat segala yang dijadikan-Nya itu, sungguh amat baik. Jadilah petang dan jadilah pagi, itulah hari keenam.",
                        style: txtR14dh,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
