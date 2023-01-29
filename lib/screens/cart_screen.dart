import 'package:flutter/material.dart';

void main() {
  runApp(Cart());
}

class Cart extends StatelessWidget {
  Cart({Key? key}) : super(key: key);
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff6c63ff),
          title:const Text(
            'cart',
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: false,
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 10),
              child: Row(children: [
                const Icon(Icons.shopping_cart),
                Text('$counter', style: const TextStyle(fontSize: 25),)
              ],),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              counter==0?const Center(child: Text('the cart is empty...'),):Container(),
            ],
          ),
        ),
      ),
    ));
  }
}
