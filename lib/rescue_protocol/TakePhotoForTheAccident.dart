import 'dart:async';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

import 'package:flutter/material.dart';

class TakePhotoForTheAccident extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormScreenState();
  }
}

class FormScreenState extends State<TakePhotoForTheAccident> {
  String _comment = "";
  bool show = true;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildComment() {
    return TextFormField(
      decoration: const InputDecoration(
          labelText: 'Comment',
          labelStyle: TextStyle(color: Colors.white60, fontSize: 15),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white60, width: 2),
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

  /*Future<File> saveImagePermenently(String imagePath) async{
    final directory = await getApplicationDocumentsDirectory();
    final name = basename(imagePath);
    final image = File('${directory.path}/$name');
    return File(imagePath).copy(image.path);
  }*/


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Emergancy Rescue ",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 20,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            backgroundColor: const Color(0xff6c63ff),
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Align(
                    //
                    alignment: const Alignment(0,-0.9),
                    child: GalleryImage != null? 
                    ClipOval(
                      child: Image.file(GalleryImage!,
                      width: 200,
                      height: 200,
                      ),
                    ) :const Icon(Icons.photo,size: 200,color: Colors.white60,),
                  ),
                  Align(
                    alignment: const Alignment(0, -0.1),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0x0D101AFF),
                        onPrimary: Colors.white60
                      ),
                      onPressed: () => PickImage(ImageSource.camera),
                      child: Container(
                        height: 90,
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(Icons.camera),
                            ),
                            const Text(
                                'Take a picture',
                              style: TextStyle(
                                fontSize: 30
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const Alignment(0, 0.2),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0x0D101AFF),
                        onPrimary: Colors.white60
                      ),
                      onPressed: () => PickImage(ImageSource.gallery),
                      child: Container(
                        height: 80,
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(Icons.photo),
                            ),
                            const Text(
                              'Pick from Gallery',
                                style: TextStyle(
                                fontSize: 20
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),


                  Align(
                    alignment: const Alignment(0, 0.5),
                    child: Container(
                      height: 90,
                      padding: const EdgeInsets.all(15),
                      child: Form(
                        key: _formKey,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              _buildComment(),
                              //SizedBox(height: 50),
                            ]),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 100,
                        child: Row(
                          children: [
                            //SizedBox(height:200,),
                            const Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            ),
                            TextButton(
                              child: const Text(
                                'Back',
                                style:
                                    TextStyle(color: Colors.white, fontSize: 20),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 90,
                        child: Row(
                          children: [
                            TextButton(
                              child: const Text(
                                'Next',
                                style:
                                    TextStyle(color: Colors.white, fontSize: 20),
                              ),
                              onPressed: () {
                                if (!_formKey.currentState!.validate()) {
                                  return;
                                }
                                _formKey.currentState!.save();
                                /*showDialog(
                                  context: context,
                                  builder: (_) => const AlertDialog(
                                    content:
                                        Text('Your data submited successfully!'),
                                  ),
                                );*/
                                Navigator.of(context).pushNamed('ScanQr');
                              },
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          backgroundColor: const Color(0xff1f2641),
        ));
  }
}
