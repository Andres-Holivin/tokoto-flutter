import 'package:flutter/material.dart';
import 'package:flutter1/components/rounded_icon_btn.dart';
import 'package:flutter1/models/Product.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ColorsDots extends StatelessWidget {
  const ColorsDots({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    int selectedColor = 1;
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        children: [
          ...List.generate(
            product.colors.length,
            (index) => ColorDot(
              color: product.colors[index],
              isSelcted: selectedColor == index,
            ),
          ),
          Spacer(),
          RoundedIconBtn(
            iconData: Icons.remove,
            press: () {},
          ),
          SizedBox(width: getProportionateScreenWidth(15)),
          RoundedIconBtn(
            iconData: Icons.add,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.color,
    this.isSelcted = false,
  }) : super(key: key);

  final Color color;
  final bool isSelcted;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      decoration: BoxDecoration(
          // color: product.colors[0],
          shape: BoxShape.circle,
          border: Border.all(
              color: isSelcted ? kPrimaryColor : Colors.transparent)),
      child: DecoratedBox(
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}
