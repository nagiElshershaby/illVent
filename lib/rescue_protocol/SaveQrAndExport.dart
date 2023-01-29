import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class SaveQrAndExport extends StatelessWidget {
  const SaveQrAndExport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        body: Center(
          child: Container(
            width: 500,
            height:1000 ,
            color: Color(0xff2B4587),
            child:Column(
              children: [
                Container(height: 89,),
                Container(
                  width: 300,
                  height: 300,
                  child: Image.asset('assets/Ill-Vent.png', fit: BoxFit.contain,),
                ),
                Container(height: 70,),
                Stack(
                  children: [
                    Container(
                      width: 400,
                      height: 300,
                      color: Color(0xff2B4587),
                    ),
                    Container(
                      width: 400,
                      height: 300,
                      decoration: BoxDecoration(
                        color: Colors.indigo,
                        borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(40),
                          topRight: const Radius.circular(40),
                          bottomLeft: const Radius.circular(0),
                          bottomRight: const Radius.circular(0),
                        ),),
                      child:
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 200,
                              height: 10,
                              decoration: BoxDecoration(
                                color: Color(0xffcccccc),
                                borderRadius: BorderRadius.circular(40),
                              ),
                            ),
                          ),
                          Container(height: 50,),

                          Center(
                            child: Container(
                              width: 300,
                              height: 120,
                              child: Text('Your QR Code Exported Sucessfully to your gallary',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
                            ),
                          ),

                          Icon(Icons.done_all, size: 70,color: Colors.greenAccent,)

                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

        ),
      ),
    );
  }
}
