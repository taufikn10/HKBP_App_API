import 'package:flutter/material.dart';
import 'package:hkbp_app/components/backbar.dart';
import 'package:hkbp_app/screens/forgotpass/forgotOtp/components/body_otp.dart';

class ForgotOtpPage extends StatefulWidget {
  const ForgotOtpPage({Key? key}) : super(key: key);

  @override
  State<ForgotOtpPage> createState() => _ForgotOtpPageState();
}

class _ForgotOtpPageState extends State<ForgotOtpPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: BackBar(),
      body: BodyForgotOtp(),
    );
  }
}
