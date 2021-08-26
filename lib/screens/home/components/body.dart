import 'package:flutter/material.dart';
import 'package:flutter1/screens/home/components/popular_product.dart';
import 'package:flutter1/screens/home/components/section_title.dart';
import 'package:flutter1/screens/home/components/special_offers.dart';
import 'package:flutter1/size_config.dart';

import 'category.dart';
import 'discount_banner.dart';
import 'home_header.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            HomeHeader(),
            SizedBox(
              height: getProportionateScreenHeight(15),
            ),
            DiscountBanner(),
            SizedBox(
              height: getProportionateScreenHeight(15),
            ),
            Categories(),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            SpecialOffers(),
            SizedBox(
              height: getProportionateScreenHeight(15),
            ),
            SectionTitle(text: "Popular Product", press: () {}),
            SizedBox(
              height: getProportionateScreenHeight(15),
            ),
            PopularProducts()
          ],
        ),
      ),
    );
  }
}
