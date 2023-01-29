import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class PleaseWaitAmbulance extends StatelessWidget {
  const PleaseWaitAmbulance({Key? key}) : super(key: key);

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
                  width: 300,
                  height: 500,
                  child: Image.asset('assets/Ambulance.png', fit: BoxFit.contain,color: Colors.white60,),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 24,
                    right: 24,
                    bottom: 5
                  ),
                  child: Container(
                    height: 100,
                      child: Text(
                          'Please Wait until the ambulance reach you',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white
                          ),
                        textAlign: TextAlign.center,
                      ),
                  ),
                ),
                Text('Time Estimated --:--',style: TextStyle(fontSize: 20,color: Colors.white)),
              ],
            ),
          ),

        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.of(context).pushNamed('DidTheAmbulanceReachYou');
            print('text button');
          },
          backgroundColor: Color(0xff6c63ff),
          tooltip: 'menu',
          child: const Icon(Icons.navigate_next,),
        ),
      ),
    );
  }
}
