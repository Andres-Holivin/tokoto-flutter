import 'package:flutter/material.dart';
import 'package:flutter1/components/defult_button.dart';
import 'package:flutter1/models/Product.dart';
import 'package:flutter1/screens/details/components/product_description.dart';
import 'package:flutter1/screens/details/components/product_images.dart';
import 'package:flutter1/screens/details/components/top_rounded_container.dart';
import 'package:flutter1/size_config.dart';

import 'color_dots.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        ProductImages(product: product),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(children: [
            ProductDescription(
              product: product,
              press: () {},
            ),
            TopRoundedContainer(
                color: Color(0xFFF6F7F9),
                child: Column(
                  children: [
                    ColorsDots(product: product),
                    TopRoundedContainer(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.screenWidth * 0.15,
                          right: SizeConfig.screenWidth * 0.15,
                          bottom: getProportionateScreenWidth(40),
                          top: getProportionateScreenWidth(15),
                        ),
                        child: DefultButton(
                          text: "Add To Cart",
                          press: () {},
                        ),
                      ),
                    )
                  ],
                )),
          ]),
        ),
      ]),
    );
  }
}
