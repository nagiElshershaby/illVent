import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';



class RedetectingYourLocation extends StatelessWidget {
  const RedetectingYourLocation({Key? key}) : super(key: key);

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
            height:1000,
            color: Color(0xff1f2641),
            child:Column(
              children: [
                Container(
                  width: 300,
                  height: 500,
                  child: Image.asset('assets/loccc.png', fit: BoxFit.contain,),
                ),
                Text('Re-detecting your location', style: TextStyle( fontSize: 30)),
              ],
            ),
          ),

        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.of(context).pushNamed('PleaseWaitAmbulance');
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
