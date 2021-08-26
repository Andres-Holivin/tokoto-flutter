import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 155,
      width: 155,
      child: Stack(clipBehavior: Clip.none, fit: StackFit.expand, children: [
        CircleAvatar(
          backgroundImage: AssetImage(image),
        ),
        Positioned(
          right: -12,
          bottom: 0,
          child: SizedBox(
            height: 46,
            width: 46,
            child: TextButton(
              style: ButtonStyle(
                  side: MaterialStateProperty.all<BorderSide>(
                      BorderSide(color: Colors.white)),
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      EdgeInsets.zero),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFFF5F6F9))),
              child: SvgPicture.asset("assets/icons/Camera Icon.svg"),
              onPressed: () {},
            ),
          ),
        )
      ]),
    );
  }
}
