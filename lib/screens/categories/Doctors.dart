import 'package:flutter/material.dart';

import '/builders/list_builder.dart';

import '../../dummy_data/pages_data.dart';

class Doctors extends StatelessWidget {
  const Doctors({Key? key}) : super(key: key);
  //static const routeName = '/Doctors';

  @override
  Widget build(BuildContext context) {
    const List<String> bestDealsImages = [
      'assets/6.png',
      'assets/7.jpg',
      'assets/8.jpg',
      'assets/9.jpg',
      'assets/10.jpg',
    ];
    const List<String> bestDealsInfo = [
      '1',
      '2',
      '3',
      '3',
      '4',
    ];

    return const ListBuilder(
      list: doctors,
      bestDealsInfo: bestDealsInfo,
      bestDealsImages: bestDealsImages,
      t: 'Doctors',
    );
  }
}