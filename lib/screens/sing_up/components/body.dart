import 'package:flutter/material.dart';
import 'package:flutter1/components/social_card.dart';
import 'package:flutter1/constants.dart';
import 'package:flutter1/screens/sing_up/components/sing_up_form.dart';
import 'package:flutter1/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.03,
              ),
              Text("Register Account", style: headingStyle),
              Text(
                "Complete yout details or continue \nwith social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.07,
              ),
              SingUpForm(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.07,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                    icon: 'assets/icons/google-icon.svg',
                    press: () {},
                  ),
                  SocialCard(
                    icon: 'assets/icons/facebook-2.svg',
                    press: () {},
                  ),
                  SocialCard(
                    icon: 'assets/icons/twitter.svg',
                    press: () {},
                  ),
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Text(
                "By continuing your confirm that you agree \nwith our Term and Condition",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
