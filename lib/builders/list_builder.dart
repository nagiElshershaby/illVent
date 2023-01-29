import 'package:flutter/material.dart';

import '../builders/deals_class.dart';
import '../widgets/list_Tile.dart';

class ListBuilder extends StatelessWidget {
  const ListBuilder({Key? key, required this.bestDealsImages, required this.bestDealsInfo, required this.list, required this.t}) : super(key: key);

  final List bestDealsImages;
  final List bestDealsInfo;
  final List list;
  final String t;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: Container(
          color: const Color(0xff2B4587),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: DealsClass(
                    bDImages: bestDealsImages, bDInfo: bestDealsInfo),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  t,
                  style: const TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 12,
                ),
              ),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index)=>lTile(context,list[index].image,list[index].type, list[index].title, list[index].description, list[index].price),
                  itemCount: list.length,
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
