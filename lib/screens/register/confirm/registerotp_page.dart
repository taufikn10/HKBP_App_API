import 'package:flutter/material.dart';
import 'package:hkbp_app/components/backbar.dart';

import 'components/body_otp.dart';

class RegisterOtpPage extends StatefulWidget {
  const RegisterOtpPage({Key? key}) : super(key: key);

  @override
  State<RegisterOtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<RegisterOtpPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: BackBar(),
      body: BodyOtp(),
    );
  }
}
