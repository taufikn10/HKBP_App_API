import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:hkbp_app/fontstyle.dart';

class Comments extends StatefulWidget {
  const Comments({Key? key}) : super(key: key);

  @override
  State<Comments> createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: SizedBox(
            width: double.infinity,
            height: 8,
            child: Container(
              decoration: BoxDecoration(
                color: whiteColor,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 14, left: 16, right: 16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Komentar",
                        style: txtSB14d,
                      ),
                      Text(
                        " (26)",
                        style: txtR14d,
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      showBottomSheet(
                          enableDrag: false,
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: MediaQuery.of(context).size.height * 0.55,
                              color: backgroundColor,
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 16, left: 16, bottom: 16, right: 16),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                "Komentar",
                                                style: txtSB14d,
                                              ),
                                              Text(
                                                " (26)",
                                                style: txtR14d,
                                              ),
                                            ],
                                          ),
                                          GestureDetector(
                                            onTap: () => Navigator.pop(context),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "Kembali",
                                                  style: txtSB10b,
                                                ),
                                                Icon(
                                                  Icons
                                                      .arrow_forward_ios_rounded,
                                                  size: 12,
                                                  color: blueColor,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      inputComment(name: 'Roni'),
                                      Expanded(
                                        child: SingleChildScrollView(
                                          child: ListView(
                                            physics:
                                                const NeverScrollableScrollPhysics(),
                                            shrinkWrap: true,
                                            children: [
                                              buildListTileAll(
                                                comment:
                                                    "Mauliate amang, sangat diberkati. Semoga dipakai Tuhan semakin dahsyat.",
                                                name: 'Moman Yo',
                                              ),
                                              buildListTileAll(
                                                comment:
                                                    "Semoga makin sukses terus amangg. Diberkati Tuhan...",
                                                name: 'Poman',
                                              ),
                                              buildListTileAll(
                                                comment:
                                                    "Terima kasih khotbahnya. Sangat mengubah sudut pandang saya",
                                                name: 'Soman',
                                              ),
                                              buildListTileAll(
                                                comment:
                                                    "Dahsyat emang informasinya. Terima kasih banyak atas ilmunyaa..",
                                                name: 'Toman',
                                              ),
                                              buildListTileAll(
                                                comment:
                                                    "Sukses terus amang. Semoganya ilmunya akan jadi bermanfaat buat orang banyak",
                                                name: 'Moman',
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          });
                    },
                    child: Row(
                      children: [
                        Text(
                          "Lihat Semua",
                          style: txtSB10b,
                        ),
                        const SizedBox(width: 2),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 10,
                          color: blueColor,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              ListView(
                shrinkWrap: true,
                children: [
                  buildListTile(
                      comment:
                          'Mauliate amang, sangat diberkati. Semoga dipakai Tuhan semakin dahsyat.',
                      name: 'Mona'),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget inputComment({
    required String? name,
  }) =>
      Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Row(
          children: [
            ProfilePicture(
              name: name![0],
              radius: 18,
              fontsize: 16,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 12, right: 8),
                child: SizedBox(
                  height: 35,
                  child: TextField(
                    style: txtR12d,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12),
                        ),
                        borderSide: BorderSide(color: lightGreyColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12),
                        ),
                        borderSide: BorderSide(color: lightGreyColor),
                      ),
                      contentPadding:
                          const EdgeInsets.only(top: 5, bottom: 5, left: 12),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: lightGreyColor),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12))),
                      fillColor: whiteColor,
                      hintText: 'Tulis komentar',
                      hintStyle: txtR12l,
                    ),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: blueColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 0,
                padding:
                    const EdgeInsets.symmetric(horizontal: 29, vertical: 9),
              ),
              onPressed: () {},
              child: Text(
                "Kirim",
                style: txtM12w,
              ),
            ),
          ],
        ),
      );

  Widget buildListTile({
    @required String? comment,
    required String? name,
  }) =>
      ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 0),
        leading: ProfilePicture(name: name![0], radius: 18, fontsize: 16),
        title: Text(
          comment!,
          style: txtR12d,
        ),
        trailing: Image.asset(
          "assets/images/btn_tambah.png",
          height: 26,
        ),
      );

  Widget buildListTileAll({
    @required String? comment,
    required String? name,
  }) =>
      ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 0),
        leading: ProfilePicture(name: name![0], radius: 18, fontsize: 16),
        title: Transform.translate(
          offset: const Offset(-4, 0),
          child: Text(
            comment!,
            style: txtR12d,
          ),
        ),
      );
}
