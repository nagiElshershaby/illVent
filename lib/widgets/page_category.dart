import 'package:flutter/material.dart';

Widget pageCategory (BuildContext context,String text, String routeName, Color c){
  return TextButton(
    onPressed: () {
      Navigator.of(context).pushNamed(routeName);
    },
    style: TextButton.styleFrom(backgroundColor: c,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 13,
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}