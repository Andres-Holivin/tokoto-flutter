import 'Product.dart';

class Cart {
  final Product porduct;
  final int numOfItems;
  Cart({required this.porduct, required this.numOfItems});
}

List<Cart> demoCarts = [
  Cart(porduct: demoProducts[0], numOfItems: 2),
  Cart(porduct: demoProducts[1], numOfItems: 1),
  Cart(porduct: demoProducts[3], numOfItems: 1),
];
