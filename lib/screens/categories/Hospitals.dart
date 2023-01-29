import 'package:flutter/material.dart';

import 'package:ill_vent/builders/list_builder.dart';

import '../../dummy_data/pages_data.dart';

class Hospitals extends StatelessWidget {
  const Hospitals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List<String> bestDealsImages = [
      'assets/1.jpg',
      'assets/2.jpg',
      'assets/3.jpg',
      'assets/4.jpg',
      'assets/5.jpg',
    ];
    const List<String> bestDealsInfo = [
      '1',
      '2',
      '3',
      '4',
      '5',
    ];

    return const ListBuilder(
      list: hospitals,
      bestDealsInfo: bestDealsInfo,
      bestDealsImages: bestDealsImages,
      t: 'Hospitals',
    );
  }
}