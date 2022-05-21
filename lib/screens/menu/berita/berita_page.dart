import 'package:flutter/material.dart';

import '../appbar.dart';
import 'components/body.dart';

class BeritaPage extends StatefulWidget {
  const BeritaPage({Key? key}) : super(key: key);

  @override
  State<BeritaPage> createState() => _BeritaPageState();
}

class _BeritaPageState extends State<BeritaPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffF9F9FB),
      appBar: Appbarr(
        txtTitle: "Berita",
        icon: Icons.bookmark_border,
      ),
      body: Body(),
    );
  }
}
