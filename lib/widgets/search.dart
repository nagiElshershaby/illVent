import 'package:flutter/material.dart';

import 'package:ill_vent/widgets/list_Tile.dart';

import '../models/pr.dart';

class SearchBar extends SearchDelegate<Pr> {
  final List p;
  SearchBar(this.p);
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.close))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(
              context,
              const Pr(
                  type: '', title: '', image: '', price: 0.0, description: ''));
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    List results = [];
    results = query.isEmpty
        ? []
        : p.where((element) => element.title.contains(query)).toList();
    return ListView.builder(
        itemCount: results.length,
        itemBuilder: (context, index) {
          return listTile(
              context,
              (results[index].image as String),
              (results[index].type as String),
              (results[index].title as String),
              ((results[index].description) as String),
              (results[index].price as double));
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List results = [];
    results = query.isEmpty
        ? []
        : p
            .where((element) =>
                element.title.contains(RegExp(query, caseSensitive: false)))
            .toList();
    return ListView.builder(
        itemCount: results.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('element', arguments: {
                'title': (results[index].title as String),
                'type': (results[index].type as String),
                'image': (results[index].image as String),
                'description': (results[index].description as String),
                'price': (results[index].price as double),
              });
            },
            child: ListTile(
              leading: Image(
                image: AssetImage(results[index].image),
                width: 55,
                height: 60,
              ),
              title: Text(results[index].title),
              subtitle: results[index].price != 0
                  ? Text(
                      '${results[index].price} L.E',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    )
                  : results[index].description != ' '
                      ? Text(
                          results[index].description,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        )
                      : Text(''),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
          );
        });
  }
}
