import 'package:flutter/material.dart';
import 'package:ill_vent/widgets/search.dart';

import '../dummy_data/pages_data.dart';

AppBar appBar (BuildContext context, int pageIndex,String title){
  return AppBar(
    backgroundColor: const Color(0xff6c63ff),
    title: Text(
      title,
      style: const TextStyle(
        fontSize: 23,
        fontWeight: FontWeight.bold,
      ),
    ),
    centerTitle: false,
    actions: [
      IconButton(
        onPressed: () {
          pageIndex!=2?showSearch(context: context, delegate: SearchBar(data[pageIndex])):
              Navigator.of(context).pushReplacementNamed('Home');
        },
        icon:pageIndex!=2? const Icon(Icons.search_rounded):
         const ImageIcon(
          AssetImage("assets/Ill-Vent.png"),
          color: Colors.black,
          size: 100,
        ),
      ),          ],
  );
}