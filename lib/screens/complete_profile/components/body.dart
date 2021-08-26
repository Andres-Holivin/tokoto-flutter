import 'package:flutter/material.dart';
import 'package:flutter1/screens/complete_profile/components/form_complete_profile.dart';
import 'package:flutter1/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight * 0.01,
                ),
                Text(
                  "Complete Profile",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionateScreenWidth(28),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.02,
                ),
                Text(
                  "Complete yout details or continue \nwith social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.04,
                ),
                FormCompleteProfile(),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.04,
                ),
                Text(
                  "By continuing yout cimfirm that you agree \nwith our Term and Condition",
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
