import 'package:flutter/material.dart';
import 'package:hkbp_app/fontstyle.dart';
import 'package:hkbp_app/models/alkitab/passage_list.dart';
import 'package:hkbp_app/services/alkitab/service_passage.dart';

class Kitab extends StatefulWidget {
  const Kitab({
    Key? key,
  }) : super(key: key);

  @override
  State<Kitab> createState() => _KitabState();
}

class _KitabState extends State<Kitab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 50,
          child: Padding(
            padding:
                const EdgeInsets.only(left: 24, right: 24, top: 12, bottom: 0),
            child: TextField(
              style: txtR12d,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(12),
                  ),
                  borderSide: BorderSide(color: lightGreyColor),
                ),
                contentPadding:
                    const EdgeInsets.only(top: 5, bottom: 5, left: 12),
                isDense: true,
                suffixIcon: Icon(Icons.search, color: darkColor),
                focusedBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(12),
                  ),
                  borderSide: BorderSide(color: lightGreyColor),
                ),
                filled: true,
                fillColor: whiteColor,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                hintText: 'Cari',
                hintStyle: txtR12l,
              ),
            ),
          ),
        ),
        Expanded(
          child: FutureBuilder<List<PassageListElement>>(
            future: PassageListServices().fetchPassageListServices(),
            builder: (contex, snapshot) {
              if (!snapshot.hasData) {
                return const Center(child: CircularProgressIndicator());
              } else {
                return ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {},
                    child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          snapshot.data![index].bookName,
                          style: txtM14d,
                        ),
                      ),
                    ),
                  ),
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
