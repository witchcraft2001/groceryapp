// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:grocery_app/features/catalog/domain/entity/product.dart';

@lazySingleton
class ProductsRepository {
  static List<Product> items = [
    const Product(
      id: 1,
      categoryId: 3,
      name: 'AROY-D - Coconut Milk UHT',
      isFavorite: false,
      price: 0.99,
      priceWithDiscount: 0.49,
      priceDescription: 'per piece',
      multiplicity: 1.0,
      cover: 'https://firebasestorage.googleapis.com/v0/b/grocerytestapp-24937.appspot.com/o/AROY-D-Coconut-Milk-UHT.webp?alt=media&token=e1199ab8-2dae-4af7-8f7b-3b1c86c3ac72',
      description:
          'Experience the rich and creamy essence of AROY-D Coconut Milk UHT, an essential ingredient that elevates a variety of Asian main dishes and desserts to new heights of deliciousness. Similar to cream but with a unique tropical twist, our coconut milk adds depth, consistency, and a touch of exotic flavor to your culinary creations.',
      characteristics: {},
      quantityUnit: 'piece',
    ),
    const Product(
      id: 2,
      categoryId: 3,
      name: 'KARA Coconut Milk Classic UHT 17% Fat',
      isFavorite: false,
      price: 1.99,
      priceWithDiscount: null,
      priceDescription: 'per piece',
      multiplicity: 1.0,
      cover: 'https://firebasestorage.googleapis.com/v0/b/grocerytestapp-24937.appspot.com/o/KARA-Coconut-Milk-Classic-UHT-17-Fat.webp?alt=media&token=3a5c3cbb-13fa-4f8b-9011-076a1090effb',
      description:
          'Experience the rich and creamy essence of tropical coconuts with KARA Coconut Milk Classic UHT 17% Fat. Perfect for a wide array of culinary delights, this premium coconut milk is a must-have in your kitchen.',
      characteristics: {'Volume': '400 ml', 'Fat': '17%'},
      quantityUnit: 'piece',
    ),
    const Product(
      id: 3,
      categoryId: 3,
      name: 'Nestle Condensed Milk',
      isFavorite: false,
      price: 2.91,
      priceWithDiscount: null,
      priceDescription: 'per piece',
      multiplicity: 1.0,
      cover: 'https://firebasestorage.googleapis.com/v0/b/grocerytestapp-24937.appspot.com/o/Nestle-Condensed-Milk-397-grams.webp?alt=media&token=43992385-4957-43d7-bb31-9038c98f206e',
      description:
          'Discover the rich and creamy taste of Nestle Condensed Milk, a versatile ingredient that brings a touch of sweetness and luxury to your culinary creations. Made from high-quality cow\'s milk with approximately 60% of the water removed, this condensed milk is perfect for a variety of uses, adding depth and flavor to both beverages and desserts.',
      characteristics: {'Volume': '397 ml', 'Fat': '10%'},
      quantityUnit: 'piece',
    ),
    const Product(
      id: 4,
      categoryId: 1,
      name: 'Eggplant',
      isFavorite: false,
      price: 3.79,
      priceWithDiscount: null,
      priceDescription: 'per kg',
      multiplicity: 0.5,
      cover: 'https://firebasestorage.googleapis.com/v0/b/grocerytestapp-24937.appspot.com/o/Fresh-Indian-Brinjal-Eggplant.webp?alt=media&token=57991ce1-a7eb-4a47-b66a-987237f33850',
      description: 'Fresh Indian Brinjal / Eggplant',
      characteristics: {},
      quantityUnit: 'kg',
    ),
    const Product(
      id: 5,
      categoryId: 1,
      name: 'Fresh Red Chillies',
      isFavorite: false,
      price: 1.29,
      priceWithDiscount: null,
      priceDescription: 'per kg',
      multiplicity: 0.5,
      cover: 'https://firebasestorage.googleapis.com/v0/b/grocerytestapp-24937.appspot.com/o/Fresh-Red-Chillies.jpg?alt=media&token=3c753b86-dbac-4e88-83aa-70f2b832ce02',
      description: 'Fresh Red Chillies',
      characteristics: {},
      quantityUnit: 'kg',
    ),
    const Product(
      id: 6,
      categoryId: 1,
      name: 'Fresh Mint - 1 Bunch',
      isFavorite: false,
      price: 1.29,
      priceWithDiscount: null,
      priceDescription: 'per bunch',
      multiplicity: 1,
      cover: 'https://firebasestorage.googleapis.com/v0/b/grocerytestapp-24937.appspot.com/o/Fresh-Mint-Pudina-leaves-1-Bunch.webp?alt=media&token=ebc81dac-c9dd-40d5-a1a1-30214a62c1ab',
      description:
          'Fresh Mint - 1 Bunch\nDiscover the invigorating flavor and aromatic essence of our Fresh Mint (Pudina leaves) - 1 Bunch. These lush, vibrant green leaves are perfect for adding a burst of freshness to your culinary creations.',
      characteristics: {},
      quantityUnit: 'bunch',
    ),
    const Product(
      id: 7,
      categoryId: 1,
      name: 'Fresh Big Sized Garlic',
      isFavorite: false,
      price: 3.45,
      priceWithDiscount: null,
      priceDescription: 'per kg',
      multiplicity: 0.5,
      cover: 'https://firebasestorage.googleapis.com/v0/b/grocerytestapp-24937.appspot.com/o/Fresh-Big-Sized-Garlic-Lahasun-475-500-grams.webp?alt=media&token=694c2def-be32-4167-8db8-a5cb12d1345d',
      description:
          'Introducing our Fresh Big Sized Garlic, known as Lahasun or Knoflook in various cultures, a staple ingredient that will elevate your culinary creations. Our garlic is handpicked to ensure you receive the freshest, most flavorful cloves perfect for any dish.',
      characteristics: {},
      quantityUnit: 'kg',
    ),
  ];

  Future<List<Product>> getProductsByCategory(int categoryId) async {
    return await Future.delayed(const Duration(milliseconds: 300), () => _getProducts(categoryId));
  }

  List<Product> _getProducts(int categoryId) =>
      items.where((e) => e.categoryId == categoryId).toList(growable: false);
}
