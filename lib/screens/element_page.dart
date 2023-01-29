import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ill_vent/widgets/app_bar.dart';
import 'package:ill_vent/widgets/rate.dart';

import '../dummy_data/promo_codes.dart';
import '../widgets/qountity_total.dart';

class ElementPage extends StatelessWidget {
  const ElementPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)?.settings.arguments as Map<String, Object>;
    final type = routeArgs['type'] as String;
    final title = routeArgs['title'] as String;
    final image = routeArgs['image'] as String;
    final description = routeArgs['description'] as String;
    final price = routeArgs['price'] as double;
    int qountity = 1;
    double total = price * qountity;

    return SafeArea(
      child: Scaffold(
        appBar: appBar(context, 2, title),
        backgroundColor: const Color(0xff1f2641),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                height: 280,
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
              const Rate(),
              Description(description),
              QountityTotal(
                  qountity: qountity,
                  price: price,
                  total: total,
                  color: Colors.indigo, type: type,),
              addToCart(type),
            ],
          ),
        ),
      ),
    );
  }
}

Widget Description(String description) {
  return Column(
    children: [
      Container(
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        child: const Text(
          'Description :',
          style: TextStyle(color: Colors.white, fontSize: 25),
          textAlign: TextAlign.start,
        ),
      ),
      Container(
        width: double.infinity,
        margin: const EdgeInsets.only(left: 20, right: 20),
        child: Text(
          description,
          style: const TextStyle(color: Colors.white, fontSize: 20),
          textAlign: TextAlign.start,
        ),
      ),
    ],
  );
}

Widget addToCart(String type) {
  return MaterialButton(
    onPressed: () {},
    child: Container(
      margin: const EdgeInsets.only(bottom: 10, top: 30),
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
          color: CupertinoColors.systemYellow,
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.shopping_cart,
            color: Colors.indigo,
          ),
          if(type == 'products')const Text(
            'add to cart...',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          if(type == 'pharmacies')const Text(
            'browse medicine...',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          if(type == 'hospitals')const Text(
            'book...',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          if(type == 'doctors')const Text(
            'reserve...',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
    ),
  );
}
