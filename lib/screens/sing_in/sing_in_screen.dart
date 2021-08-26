import 'package:flutter/material.dart';
import 'package:flutter1/screens/sing_in/components/body.dart';
import 'package:flutter1/size_config.dart';

class SingInScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Sing In"),
      ),
      body: Body(),
    );
  }
}
