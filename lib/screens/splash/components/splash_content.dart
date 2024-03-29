import 'package:flutter/material.dart';
import 'package:flutter1/constants.dart';
import 'package:flutter1/size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text("TOKOTO",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(36),
                color: kPrimaryColor,
                fontWeight: FontWeight.bold)),
        Text(text, textAlign: TextAlign.center),
        Spacer(flex: 2),
        Image.asset(
          image,
          height: getProportionateScreenHeight(256),
          width: getProportionateScreenWidth(235),
        )
      ],
    );
  }
}
