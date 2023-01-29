import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';



class ThankYouForSavingLife extends StatelessWidget {
  const ThankYouForSavingLife({Key? key}) : super(key: key);

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
                Container(height: 50,),
                Container(
                  width: 300,
                  height: 300,
                  child: Icon(Icons.favorite , size: 300, color: Colors.red,),
                ),
                Container(height: 50,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                      'thank you for saving a life, we appreciate and here is a gift for you!',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white
                      ),
                    textAlign: TextAlign.center,
                  ),
                ),

                Container(height: 10,),
                Container(
                  width: 300,
                  height: 100,
                  child: Image.asset('assets/Discount.png', fit: BoxFit.contain,),
                ),
              ],
            ),
          ),

        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.of(context).pushNamed('Home');
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
