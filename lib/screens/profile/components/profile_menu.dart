import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.text,
    required this.press,
    required this.icon,
  }) : super(key: key);
  final String text, icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
          style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  const EdgeInsets.all(20)),
              shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              backgroundColor:
                  MaterialStateProperty.all<Color>(Color(0xFFF5F6F9))),
          onPressed: press,
          child: Row(
            children: [
              SvgPicture.asset(
                icon,
                width: 22,
                color: kPrimaryColor,
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                  child: Text(
                text,
                style: Theme.of(context).textTheme.bodyText2,
              )),
              Icon(Icons.arrow_forward_ios)
            ],
          )),
    );
  }
}
