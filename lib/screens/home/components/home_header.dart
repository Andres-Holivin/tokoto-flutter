import 'package:flutter/material.dart';
import 'package:flutter1/screens/cart/cart_screen.dart';
import 'package:flutter1/screens/home/components/search_field.dart';

import '../../../size_config.dart';
import 'icon_btn_with_counter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconBtnWithCounter(
            numOfItems: 10,
            press: () => Navigator.pushNamed(context, CartScreen.routeName),
            svgSrc: "assets/icons/Cart Icon.svg",
          ),
          IconBtnWithCounter(
            numOfItems: 10,
            press: () {},
            svgSrc: "assets/icons/Bell.svg",
          ),
        ],
      ),
    );
  }
}
