import 'package:flutter/material.dart';

Widget rescue (BuildContext context){
  return Center(
    child: Container(
      color: const Color(0xff1f2641),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 280,
              width: 280,
              decoration: BoxDecoration(
                border: Border.all(
                    color: const Color(0xff0C6980),
                    style: BorderStyle.solid,
                    width: 6),
                borderRadius: BorderRadius.circular(1000),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xff6c63ff),
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: Offset(4, 4),
                  )
                ],
                color: Colors.white,
              ),
              child: MaterialButton(
                shape: const CircleBorder(),
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed('TakePhotoForTheAccident');
                },
                child: //Icon(Icons.add,size:250),
                SizedBox(
                    height: 170,
                    child: Image.asset("assets/red_plus.png")),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}