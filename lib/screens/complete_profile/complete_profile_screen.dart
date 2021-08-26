import 'package:flutter/material.dart';
import './components/body.dart';

class CompleteProfileScreen extends StatelessWidget {
  static String routerName = 'compelete_profile_name';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Sing Up'),
      ),
      body: Body(),
    );
  }
}
