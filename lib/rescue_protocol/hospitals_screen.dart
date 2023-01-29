import 'package:flutter/material.dart';

class HospitalsScreen extends StatelessWidget {
  const HospitalsScreen({Key? key}) : super(key: key);

  AppBar appBar (BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xff6c63ff),
      title: const Text(
        'Ill-vent',
        style: TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: false,
      actions: [
        IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed('Home');
          },
          icon: const ImageIcon(
            AssetImage("assets/Ill-Vent.png"),
            color: Colors.black,
            size: 100,
          ),
        ),          ],
    );
}

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: appBar(context),
      body:Container() ,
    ),);
  }
}
