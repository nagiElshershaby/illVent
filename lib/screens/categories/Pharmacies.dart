import 'package:flutter/material.dart';

import 'package:ill_vent/builders/list_builder.dart';

import '../../dummy_data/pages_data.dart';

class Pharmacies extends StatelessWidget {
  const Pharmacies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List<String> bestDealsImages = [
      'assets/11.jpg',
      'assets/12.jpg',
      'assets/13.jpg',
      'assets/14.jpg',
      'assets/15.jpg',
    ];
    const List<String> bestDealsInfo = [
      '1',
      '2',
      '3',
      '3',
      '4',
    ];

    return const ListBuilder(
      list: pharmacies,
      bestDealsInfo: bestDealsInfo,
      bestDealsImages: bestDealsImages,
      t: 'Pharmacies',
    );
  }
}