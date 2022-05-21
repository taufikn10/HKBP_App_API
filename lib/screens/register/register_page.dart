import 'package:flutter/material.dart';

import '../../components/appbar.dart';
import 'components/body.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: TopBar(
        textHeader: 'Selamat Datang',
        textSub: 'Silahkan isi data diri kamu',
      ),
      body: Body(),
    );
  }
}
