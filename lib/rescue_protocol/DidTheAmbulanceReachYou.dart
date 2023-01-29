import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';



class DidTheAmbulanceReachYou extends StatelessWidget {
  const DidTheAmbulanceReachYou({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Emergency Rescue' , style: TextStyle( fontSize: 30 , fontWeight: FontWeight.bold , color: Colors.black )  ,),
          centerTitle: true,
          backgroundColor: Color(0xff6c63ff),
        ),
        body: Center(
          child: Container(
            width: 500,
            height:1000 ,
            color: Color(0xff1f2641),
            child:Column(
              children: [
                Container(
                  width: 500,
                  height: 500,
                  child: Image.asset('assets/Ambulance.png', fit: BoxFit.contain,color: Colors.white60,),
                ),
                Container( width: 300,height: 100,
                    child: Text(
                        'Did the Ambulance reach you?',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      textAlign: TextAlign.center,
                    ),
                ),
                Container(
                  width: 350,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(onPressed: () {
                        Navigator.of(context).pushNamed('RedetectingYourLocation');
                        print('Text Button');
                      },
                        style: TextButton.styleFrom(backgroundColor: Color(0xff6c63ff),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Not yet',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(width: 30,),
                      TextButton(onPressed: () {
                        Navigator.of(context).pushNamed('ThankYouForSavingLife');
                        print('Text Button');
                      },
                        style: TextButton.styleFrom(backgroundColor: Color(0xff6c63ff),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Yes',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),

        ),
      ),
    );
  }
}
