import 'package:flutter/material.dart';
import 'package:flutter1/constants.dart';
import 'package:flutter1/size_config.dart';

class DefultButton extends StatelessWidget {
  const DefultButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String text;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: TextButton(
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
              fontSize: getProportionateScreenWidth(18), color: Colors.white),
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(kPrimaryColor),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Colors.red)))),
      ),
    );
  }
}
