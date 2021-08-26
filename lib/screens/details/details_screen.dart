import 'package:flutter/material.dart';
import 'package:flutter1/components/custom_button_nav_bar.dart';
import '../../enums.dart';
import 'components/body.dart';
import 'components/custom_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  static String routesName = '/detail_screen';
  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments? arguments =
        ModalRoute.of(context)?.settings.arguments as ProductDetailsArguments?;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomAppBar(rating: arguments!.product.rating),
      body: Body(
        product: arguments.product,
      ),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.home,
      ),
    );
  }
}
