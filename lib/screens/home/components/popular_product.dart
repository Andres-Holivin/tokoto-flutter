import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/models/Product.dart';
import 'package:flutter1/screens/details/components/custom_app_bar.dart';
import 'package:flutter1/screens/details/details_screen.dart';
import 'package:flutter1/screens/home/components/product_card.dart';

import '../../../size_config.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
              demoProducts.length,
              (index) => ProductCard(
                  product: demoProducts[index],
                  press: () => Navigator.pushNamed(
                      context, DetailsScreen.routesName,
                      arguments: ProductDetailsArguments(
                          product: demoProducts[index])))),
          SizedBox(
            width: getProportionateScreenWidth(20),
          )
        ],
      ),
    );
  }
}
