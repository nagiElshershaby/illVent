import 'package:flutter/material.dart';

class DealsClass extends StatelessWidget {
  const DealsClass({Key? key, required this.bDImages, required this.bDInfo})
      : super(key: key);

  final bDImages;
  final bDInfo;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'DEALS',
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          height: 160,
          decoration: BoxDecoration(
            color: const Color(0xff2B4587),
            borderRadius: BorderRadius.circular(15),
          ),
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => buildItem(index),
              itemCount: bDImages.length),
        ),
      ],
    );
  }

  Widget buildItem(int i) => Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          height: 100,
          width: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: Colors.black,
              width: 3,
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Container(
              color: const Color(0xff2B4587),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Container(
                      width: 170,
                      height: 90,
                      color: Colors.black,
                      child: Image(
                        image: AssetImage(bDImages[i]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    bDInfo[i],
                    style: const TextStyle(fontSize: 20, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
