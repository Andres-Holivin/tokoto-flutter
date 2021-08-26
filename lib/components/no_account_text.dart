import 'package:flutter/material.dart';
import 'package:flutter1/constants.dart';
import 'package:flutter1/screens/sing_up/sing_up_screen.dart';
import 'package:flutter1/size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?",
          style: TextStyle(fontSize: getProportionateScreenWidth(16)),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, SingUpScreen.routeName);
          },
          child: Text(
            "Sing Up",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                color: kPrimaryColor),
          ),
        )
      ],
    );
  }
}
