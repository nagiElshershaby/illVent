import 'package:flutter/material.dart';

class Rate extends StatefulWidget {
  const Rate({Key? key}) : super(key: key);

  @override
  State<Rate> createState() => _RateState();
}

class _RateState extends State<Rate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10,right: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Text(
                'Rate :  ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              Icon(
                Icons.star,
                color: Colors.yellowAccent,
              ),
              Icon(
                Icons.star,
                color: Colors.yellowAccent,
              ),
              Icon(
                Icons.star,
                color: Colors.yellowAccent,
              ),
              Icon(
                Icons.star,
                color: Colors.yellowAccent,
              ),
              Icon(
                Icons.star,
                color: Colors.grey,
              ),
            ],
          ),
          Container(
            width: double.infinity,
            child: Text(
              '1065 rate',
              style: TextStyle(fontSize: 15, color: Colors.white),
              textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }
}
