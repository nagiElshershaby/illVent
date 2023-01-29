import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class NearestHospital extends StatelessWidget {
  const NearestHospital({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.white),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: Text(
              "Emergency Rescue",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            backgroundColor: Color(0xff6c63ff),
            centerTitle: true,
          ),
          body: Stack(
            children: [


              Align(
                alignment: Alignment(0,-0.3),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      width: 370,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xff6c63ff),
                      ),
                      child: Container(
                        //alignment: Alignment.bottomLeft,
                        child: Row(
                          children: [
                            Container(
                              width: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 140,
                                width: 120,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Colors.white),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset('assets/CHG.png',
                                      fit: BoxFit.fill),
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 40,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    width: 200,
                                    height: 30,
                                    child: Text("Cleopatra Hospital",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        )),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    child: Text(
                                      'Provide medical insurance,',
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.white),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    child: Text(
                                      'have avaliable beds and',
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.white),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    child: Text(
                                      'Emergency care',
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.white),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 80,
                                        height: 50,
                                        //color: Colors.red,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          alignment: Alignment.bottomRight,
                                          width: 100,
                                          height: 30,
                                          //color: Colors.blue,
                                          child: Text(
                                            '1.2Km away...',
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      )
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
              ),
              //Container(height: 20,color: Colors.red,),
              Align(
                alignment: Alignment(0,1),
                child: Container(
                  width: 350,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Color(0xff6c63ff),
                    borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(40),
                      topRight: const Radius.circular(40),
                      bottomLeft: const Radius.circular(0),
                      bottomRight: const Radius.circular(0),
                    ),
                  ),
                  child: Column(
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
                      //Container(height: 5,),

                      Center(
                        child: Column(
                          children: [
                            Container(
                              height: 75,
                              child: Image.asset(
                                'assets/Ambulance.png',
                                fit: BoxFit.fill,
                                color: Colors.white60,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0, left: 8),
                              child: Container(
                                width: 340,
                                height: 50,
                                child: Text(
                                  'Ambulance is ready to go, click comfirm to continue or show map to go yourself',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 130,
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pushNamed('OpenInMaps');
                                      print('Text Button');
                                    },
                                    style: TextButton.styleFrom(
                                        backgroundColor: Color(0xff1f2641),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          'SHOW MAP',
                                          style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 40,
                                ),
                                Container(
                                  width: 130,
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pushNamed('PleaseWaitAmbulance');
                                      print('Text Button');
                                    },
                                    style: TextButton.styleFrom(
                                        backgroundColor: Color(0xff1f2641),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          'CONFIRM',
                                          style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0,-0.7),
                child:Container(
                      child:Text("Nearest Hospital...",
                              style:
                              TextStyle(fontSize: 30, color: Colors.white)
                          )

                ),

              ),
            ],
          ),
          backgroundColor: Color(0xff1f2641),
        ),
      ),
    );
  }
}
