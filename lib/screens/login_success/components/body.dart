import 'package:flutter/material.dart';
import 'package:flutter1/components/defult_button.dart';
import 'package:flutter1/screens/home/home_screen.dart';
import 'package:flutter1/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: SizeConfig.screenHeight * 0.04,
        ),
        Image.asset(
          "assets/images/success.png",
          height: SizeConfig.screenHeight * 0.5,
        ),
        SizedBox(
          height: SizeConfig.screenHeight * 0.04,
        ),
        Text(
          "Login Success",
          style: TextStyle(
              fontSize: getProportionateScreenWidth(30),
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
        Spacer(),
        SizedBox(
            width: SizeConfig.screenWidth * 0.6,
            child: DefultButton(
                text: "Back To Home",
                press: () =>
                    Navigator.pushNamed(context, HomeScreen.routeName))),
        Spacer()
      ],
    );
  }
}
