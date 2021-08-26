import 'package:flutter/material.dart';
import 'package:flutter1/screens/sing_up/components/body.dart';

class SingUpScreen extends StatelessWidget {
  static String routeName = '/sing_up';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Sing Up"),
      ),
      body: Body(),
    );
  }
}
