import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/screens/profile/components/profile_menu.dart';
import 'package:flutter1/screens/profile/components/profile_pic.dart';
import 'package:flutter1/screens/splash/splash_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProfilePic(
            image: "assets/images/Profile Image.png",
          ),
          SizedBox(
            height: 20,
          ),
          ProfileMenu(
            press: () {},
            text: "My Account",
            icon: "assets/icons/User Icon.svg",
          ),
          ProfileMenu(
            press: () {},
            text: "Notigications",
            icon: "assets/icons/Bell.svg",
          ),
          ProfileMenu(
            press: () {},
            text: "Settings",
            icon: "assets/icons/Settings.svg",
          ),
          ProfileMenu(
            press: () {},
            text: "Help Center",
            icon: "assets/icons/Question mark.svg",
          ),
          ProfileMenu(
            press: () => Navigator.pushNamed(context, SplashScreen.routeName),
            text: "Log Out",
            icon: "assets/icons/Log out.svg",
          ),
        ],
      ),
    );
  }
}
