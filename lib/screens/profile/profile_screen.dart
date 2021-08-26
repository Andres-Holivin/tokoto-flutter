import 'package:flutter/material.dart';
import 'package:flutter1/components/custom_button_nav_bar.dart';
import '../../enums.dart';
import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = '/profile_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.profile,
      ),
    );
  }
}
