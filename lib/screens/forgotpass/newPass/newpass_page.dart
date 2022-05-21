import 'package:flutter/material.dart';
import 'package:hkbp_app/components/appbar.dart';
import 'package:hkbp_app/screens/forgotpass/newPass/components/body_newpass.dart';

class NewPassPage extends StatefulWidget {
  const NewPassPage({Key? key}) : super(key: key);

  @override
  State<NewPassPage> createState() => _NewPassPageState();
}

class _NewPassPageState extends State<NewPassPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: TopBar(
        textHeader: 'Buat Kata Sandi',
        textSub: 'Silahkan daftarkan kata sandi baru',
      ),
      body: BodyNewPass(),
    );
  }
}
