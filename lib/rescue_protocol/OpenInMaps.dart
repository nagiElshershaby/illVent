import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class OpenInMaps extends StatelessWidget {
  const OpenInMaps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff6c63ff),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            'Emergency Rescue',
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: false,
          actions: [],
        ),
        body: Center(
          child: Container(
            width: 500,
            //height:500 ,
            color: Color(0xff1f2641),
            child:Stack(
              children: [
                Align(
                  alignment: Alignment(0,-0.8),
                  child: Container(
                    width: 340,
                    height: 340,

                    child: Image.asset('assets/map.png'),
                  ),
                ),
                Align(
                  alignment: Alignment(0,0.3),
                  child: Container(
                      height: 89,
                      width: 300,
                      child: Text('  8 Minutes to arrive',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color: Colors.white),),
                    ),
                ),
                Align(
                  alignment: Alignment(0,1),
                  child: Container(
                          width: 340,
                          height: 180,
                          decoration: BoxDecoration(
                            color: Color(0xff6c63ff),
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
                                  height: 5,
                                  decoration: BoxDecoration(
                                    color: Color(0xffcccccc),
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                ),
                              ),
                              Container(height: 20,),

                              Center(
                                child: Column(
                                  children: [
                                    Container(
                                      width: 240,
                                      height: 50,
                                      child: Text('Please drive safely to make sure that the patient is not getting worse..',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
                                    ),
                                    Container(child: Text('speed does not mean rescue' ,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
                                    ),
                                    Container(
                                      width: 200,
                                      child: TextButton(onPressed: () {
                                          Navigator.of(context).pushNamed('Map');
                                        print('Text Button');
                                      },
                                        style: TextButton.styleFrom(backgroundColor: Color(0xff1f2641),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              'Open in Maps',
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                ),

              ],
            ),
          ),

        ),
      ),
    );
  }
}
