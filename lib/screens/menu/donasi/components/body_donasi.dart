import 'package:flutter/material.dart';
import 'package:hkbp_app/components/background.dart';
import 'package:hkbp_app/fontstyle.dart';
import 'package:hkbp_app/list/list_donasi.dart';
import 'package:hkbp_app/screens/menu/donasi/details/rincian_donasi.dart';

class BodyDonasi extends StatelessWidget {
  const BodyDonasi({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: Column(
            children: List.generate(donasi.length, (index) {
          return Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  elevation: 3,
                  child: Stack(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RincianDonasi(
                                donasiImg: donasi[index],
                              ),
                            ),
                          );
                        },
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(24),
                                topRight: Radius.circular(24),
                              ),
                              child: Image.asset(
                                donasi[index]["img"][0],
                                fit: BoxFit.fitWidth,
                                width: double.infinity,
                                height: 156,
                              ),
                            ),
                            SizedBox(
                              height: 70,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 12, right: 12, top: 8, bottom: 8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            donasi[index]['title'],
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: txtR12d,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 11),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "Ditutup",
                                                  style: txtB10d,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 6),
                                                  child: Text(
                                                    donasi[index]['ditutup'],
                                                    style: txtR10d,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 16),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: blueColor,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  RincianDonasi(
                                                donasiImg: donasi[index],
                                              ),
                                            ));
                                      },
                                      child: const Text(
                                        "Donasi",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 10,
                        top: 5,
                        child: Icon(
                          Icons.bookmark_outline,
                          color: whiteColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        })),
      ),
    );
  }
}
