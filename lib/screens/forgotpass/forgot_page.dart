import 'package:flutter/material.dart';

import '../../components/appbar.dart';
import 'components/body.dart';

class ForgotPage extends StatefulWidget {
  const ForgotPage({Key? key}) : super(key: key);

  @override
  State<ForgotPage> createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: TopBar(
        textHeader: 'Lupa Kata Sandi',
        textSub: 'Silahkan isi email kamu',
      ),
      body: Body(),
    );
  }
}
