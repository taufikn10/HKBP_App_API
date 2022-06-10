// ignore_for_file: avoid_print

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hkbp_app/fontstyle.dart';
import 'package:hkbp_app/models/alkitab/passage_list.dart';

import '../../../../../services/alkitab/service_passage2.dart';

class Kitab extends StatefulWidget {
  const Kitab({
    Key? key,
  }) : super(key: key);

  @override
  State<Kitab> createState() => _KitabState();
}

class _KitabState extends State<Kitab> {
  PassageListServices passageListServices = PassageListServices();
  List<PassageListElement> _passageList = [];
  late bool _loading;
  String query = '';
  Timer? debouncer;

  _getPassageList() async {
    final passage = await passageListServices.getPassageList(query);
    setState(() {
      _passageList = passage;
      _loading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    _getPassageList();
    _loading = true;
  }

  @override
  void dispose() {
    debouncer?.cancel();
    super.dispose();
  }

  void debounce(
    VoidCallback callback, {
    Duration duration = const Duration(milliseconds: 60),
  }) {
    if (debouncer != null) {
      debouncer!.cancel();
    }

    debouncer = Timer(duration, callback);
  }

  Future searchBook(String query) async => debounce(() async {
        final passage = await passageListServices.getPassageList(query);

        if (!mounted) return;

        setState(() {
          this.query = query;
          _passageList = passage;
        });
      });

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
              onChanged: searchBook,
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
          child: _loading
              ? const Center(child: CircularProgressIndicator())
              : _passageList.isEmpty
                  ? Center(
                      child: Text(
                        'Tidak ada hasil yang ditemukan',
                        style: txtM14d,
                      ),
                    )
                  : ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: _passageList.length,
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: () {},
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              _passageList[index].bookName,
                              style: txtM14d,
                            ),
                          ),
                        ),
                      ),
                    ),
        ),
      ],
    );
  }
}
