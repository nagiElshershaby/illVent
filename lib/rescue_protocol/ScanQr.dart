import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'dart:async';
import 'dart:io';

class ScanQr extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormScreenState();
  }
}

class FormScreenState extends State<ScanQr> {
  String _ID = "";
  bool show = true;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildID() {
    return TextFormField(
      decoration: const InputDecoration(
          labelText: 'Information',
          labelStyle: TextStyle(color: Colors.white60, fontSize: 15),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white60),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          )),
    );
  }

  File? GalleryImage;
  Future PickImage(ImageSource source)async{
    final GalleryImage = await ImagePicker().pickImage(source: source);
    if (GalleryImage == null) return;

    final imageTemporary = File(GalleryImage.path);
    this.GalleryImage = imageTemporary;
    setState(() => this.GalleryImage = imageTemporary);
    //final imagePermenent = await saveImagePermenently(GalleryImage.path);
    //setState(()=> this.GalleryImage= imagePermenent);
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Emergancy Rescue ",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
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
            backgroundColor: Color(0xff6c63ff),
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment(0.0,-0.9),
                    child: Container(
                      height: 350,width: 350,
                      decoration: BoxDecoration(
                        color: Color(0xff6c63ff),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 100,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color(0xff6c63ff),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                            ),
                            child:
                            Image.asset('assets/Ambulance.png', color: Colors.white),
                          ),
                          Container(
                            padding: EdgeInsets.all(8.0),
                            alignment: Alignment.center,
                            width: 200,
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: GalleryImage != null?
                            ClipOval(
                              child: Image.file(GalleryImage!,
                                width: 200,
                                height: 200,
                              ),
                            ) :MaterialButton(
                              onPressed: () => PickImage(ImageSource.camera),
                                child: Image.asset('assets/qr.jpeg'),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Color(0x0D101AFF),
                                    onPrimary: Colors.white60
                                ),
                                onPressed: () => PickImage(ImageSource.camera),
                                child: Text(
                                  "Scan the QRcode",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0.0,0.2),
                    child: Container(
                      //color: Color(0xff1f2641),
                      child: Text(
                        "-Or-",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0.0,0.3),
                    child: Container(
                      //color: Color(0xff1f2641),
                      child: Text(
                        "Enter your ID",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0.0,0.6),
                    child: Container(
                      height: 109,
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Form(
                        key: _formKey,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              _buildID(),
                              SizedBox(height: 50),
                            ]),
                      ),
                    ),
                  ),




                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 50,width: 90,
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            child: Text(
                              'Next',
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            onPressed: () {
                              if (!_formKey.currentState!.validate()) {
                                return;
                              }
                              _formKey.currentState!.save();

                              /*showDialog(
                                context: context,
                                builder: (_) => const AlertDialog(
                                  content: Text('Your data submited successfully!'),
                                ),
                              );*/
                             Navigator.of(context).pushNamed('FindingNearstHospital');
                            },
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),Align(
                    alignment: Alignment(1,0.8),
                    child: Container(
                      height: 50,width: 90,
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            child: Text(
                              'Skip',
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            onPressed: () {
                              if (!_formKey.currentState!.validate()) {
                                return;
                              }
                              _formKey.currentState!.save();

                              Navigator.of(context)
                                  .pushNamed('FindingNearstHospital');
                            },
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
          backgroundColor: Color(0xff1f2641),
        ));
  }
}
