import 'package:flutter/material.dart';

import 'package:ill_vent/builders/list_builder.dart';

import '../../dummy_data/pages_data.dart';

class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);
  //static const routeName = '/Products';

  @override
  Widget build(BuildContext context) {
    const bestDealsImages = [
      'assets/product1.jpg',
      'assets/product2.jpg',
      'assets/product3.jpg',
      'assets/product5.jpg',
      'assets/product6.jpg',
      'assets/product7.jpg',
    ];

    const bestDealsInfo = ['1', '2', '3', '4', '5', '6'];


    return const ListBuilder(
      list: products,
      bestDealsInfo: bestDealsInfo,
      bestDealsImages: bestDealsImages,
      t: 'Products',
    );
  }
}