import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class logIn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormScreenState();
  }
}

class FormScreenState extends State<logIn> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
      backgroundColor: Color(0xff2B4587),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
              ],
            ),
            Container(
              height: 60,
            ),
            Column(
              children: [
                Container(
                  height: 20,
                ),
                Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60.0),
                            color: Color(0xff3B41C9),
                            // border: Border.all( color: Colors.white10 , width: 2),
                          ),
                          child: Stack(children: [
                            Column(
                              children: [

                                Container(),
                                SizedBox(
                                  width: 400,
                                  height: 500,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: [
                                      Text(
                                        'Welcome!',
                                        style: const TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold,),
                                      ),
                                      //_buildEmail(),


                                      SizedBox(
                                        height: 30,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,

                                          children: [
                                            Container(
                                              height: 60,
                                              width: 200,
                                              decoration: BoxDecoration(border: Border.all(width: 1), borderRadius: BorderRadius.circular(20.0)),
                                              child: OutlinedButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pushNamed('FormOne'); //name of login page
                                                  },
                                                  style: OutlinedButton.styleFrom(
                                                      backgroundColor: Colors.blue[900],
                                                      primary: Colors.white,
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(18),
                                                      )),
                                                  child: const Text(
                                                    'Get Started',
                                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                                                  )),
                                            ),

                                          ],
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: Container(
                                              height: 60,
                                              width: 250,
                                              decoration: BoxDecoration(border: Border.all(width: 1), borderRadius: BorderRadius.circular(20.0)),
                                              child: OutlinedButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pushNamed('Home'); //name of login page
                                                  },
                                                  style: OutlinedButton.styleFrom(
                                                      backgroundColor: Colors.blue[900],
                                                      primary: Colors.white,
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(18),
                                                      )),
                                                  child: const Text(
                                                    'Quick rescue',
                                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                                                  )),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ]),
                                  ),
                                ),
                              ],
                            ),
                          ]),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff213e80), width: 10, style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(50.0),
                            color: Colors.white,
                            // border: Border.all( color: Colors.white10 , width: 2),
                          ),
                          // child: Image(image: AssetImage(""),),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    )));
  }
}
