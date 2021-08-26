import 'package:flutter/material.dart';
import 'package:flutter1/screens/otp/components/body.dart';

class OtpScreen extends StatelessWidget {
  static String routerName = '/otp';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OTP Verification'),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
