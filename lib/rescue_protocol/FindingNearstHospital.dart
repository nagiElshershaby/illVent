import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class FindingNearstHospital extends StatelessWidget {
  const FindingNearstHospital({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Emergency Rescue' , style: TextStyle( fontSize: 30 , fontWeight: FontWeight.bold , color: Colors.black )  ,),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
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
                  child: Image.asset('assets/loc1.png', fit: BoxFit.contain,),
                ),
                Text('Finding Nearest Hospital...', style: TextStyle( fontSize: 30,color: Colors.white)),
              ],
            ),
          ),

        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.of(context).pushNamed('NearestHospital');
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
