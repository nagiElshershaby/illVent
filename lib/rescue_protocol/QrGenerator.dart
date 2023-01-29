import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';


class QrGenerator extends StatefulWidget {
  const QrGenerator({Key? key}) : super(key: key);

  @override
  State<QrGenerator> createState() => _MyContainerState();
}

class _MyContainerState extends State<QrGenerator> {
  int _counter = 0;

  @override
  void initState() {
    _counter = 0;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Container(
              height: 500,
              width: 300,
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20.0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: QrImage(
                      data: "$_counter times ",
                      version: QrVersions.auto,
                      size: 350,
                    ),
                  ),
                  Container(
                    child: Text(
                      'take a screen shot',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'ID: $_counter ',
                        style: const TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          _counter++;
                        });
                      },
                      child: const Text(
                        'save',
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
/*
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: QrImage(
            data: "",
            version: QrVersions.auto,
            size: 350,
          ),
        ),
      ),
    );
  }
}*/
