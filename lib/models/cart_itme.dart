import 'dart:ui';

class CartItemModel {
  final int id;
  final String image;
  final Color color;

  CartItemModel({required this.id, required this.image, required this.color});
}

final List<CartItemModel> imageItems = [
  CartItemModel(
    id: 1,
    color: const Color(0xFFEAB9B9),
    image: "assets/magazine/images/image3.jpeg",
  ),
  CartItemModel(
    id: 2,
    color: const Color(0xFF989494),
    image: "assets/magazine/images/image2.jpeg",
  ),
  CartItemModel(
    id: 3,
    color: const Color(0xFF000000),
    image: "assets/magazine/images/image1.jpeg",
  ),
  CartItemModel(
    id: 4,
    color: const Color(0xFFEF994F),
    image: "assets/magazine/images/image6.jpeg",
  ),
  CartItemModel(
    id: 5,
    color: const Color(0x010C13AB),
    image: "assets/magazine/images/image5.jpeg",
  ),
];

final List<String> bottomList = [
  "assets/magazine/images/image7.jpeg",
  "assets/magazine/images/image8.jpeg",
  "assets/magazine/images/image9.jpeg",
];
