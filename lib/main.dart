import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import '/screens/categories/Products.dart';
import '/screens/categories/Doctors.dart';
import '/screens/categories/Hospitals.dart';
import '/screens/categories/Pharmacies.dart';
import '/screens/categories/rescue.dart';
import '/screens/element_page.dart';

import 'package:ill_vent/rescue_protocol/DidTheAmbulanceReachYou.dart';
import 'package:ill_vent/rescue_protocol/FindingNearstHospital.dart';
import 'package:ill_vent/rescue_protocol/FormOne.dart';
import 'package:ill_vent/rescue_protocol/NearestHospital.dart';
import 'package:ill_vent/rescue_protocol/OpenInMaps.dart';
import 'package:ill_vent/rescue_protocol/PleaseWaitAmbulance.dart';
import 'package:ill_vent/rescue_protocol/QrGenerator.dart';
import 'package:ill_vent/rescue_protocol/RedetectingYourLocation.dart';
import 'package:ill_vent/rescue_protocol/Registration.dart';
import 'package:ill_vent/rescue_protocol/SaveQrAndExport.dart';
import 'package:ill_vent/rescue_protocol/ScanQr.dart';
import 'package:ill_vent/rescue_protocol/TakePhotoForTheAccident.dart';
import 'package:ill_vent/rescue_protocol/ThankYouForSavingLife.dart';
import 'package:ill_vent/rescue_protocol/logIn.dart';
import 'package:ill_vent/rescue_protocol/Map.dart';

import '../widgets/app_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          //primarySwatch: Colors.indigo,
          ),
      home: AnimatedSplashScreen(
        splash: const ImageIcon(
          AssetImage("assets/Ill-Vent.png"),
          color: Colors.black,
          size: 100,
        ),
        duration: 3000,
        nextScreen: const MyHomePage(title: 'Ill-vent'),
        splashTransition: SplashTransition.fadeTransition,
        //pageTransitionType: PageTransitionType.scale,
        backgroundColor: const Color(0xff6c63ff),
      ),
      routes: {
        'logIn': (context) => logIn(),
        'Map': (context) => Map(),

        'Home': (context) => const MyHomePage(title: 'Ill-vent'),
        'element': (context)=> ElementPage(),

        'DidTheAmbulanceReachYou': (context) => const DidTheAmbulanceReachYou(),
        'FindingNearstHospital': (context) => const FindingNearstHospital(),
        'FormOne': (context) => FormScreen(),

        'NearestHospital': (context) => const NearestHospital(),
        'OpenInMaps': (context) => const OpenInMaps(),

        'PleaseWaitAmbulance': (context) => const PleaseWaitAmbulance(),
        'QrGenerator': (context) => const QrGenerator(),
        'RedetectingYourLocation': (context) => const RedetectingYourLocation(),
        'Registration': (context) => Registration(),
        'SaveQrAndExport': (context) => const SaveQrAndExport(),
        'ScanQr': (context) => ScanQr(),
        'TakePhotoForTheAccident': (context) => TakePhotoForTheAccident(),
        'ThankYouForSavingLife': (context) => const ThankYouForSavingLife(),
      },
      onUnknownRoute:(settings){
        return MaterialPageRoute(builder: (context)=> MyHomePage(title: 'Ill-vent'),);
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 2;

  @override
  Widget build(BuildContext context) {
    List pages = [
      Products(),
      Pharmacies(),
      rescue(context),
      Hospitals(),
      Doctors()
    ];
    List<Color> colors = [
      const Color(0xff2B4587),
      const Color(0xff2B4587),
      const Color(0xff1f2641),
      const Color(0xff2B4587),
      const Color(0xff2B4587),
    ];

    return Scaffold(
      //backgroundColor: (colorId==true) ? Color() : Colors.white,
      backgroundColor: const Color(0xff1f2641),
      appBar: appBar(context,index,'Ill-vent'),
      body: pages[index],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('FormOne');
        },
        backgroundColor: const Color(0xff6c63ff),
        tooltip: 'menu',
        child: const Icon(
          Icons.file_copy,
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
          items: const [
            Icon(Icons.local_grocery_store_rounded, color: Colors.white,),
            Icon(Icons.medication_liquid, color: Colors.white,),
            Icon(Icons.local_hospital, color: Colors.white,),
            Icon(Icons.home_filled, color: Colors.white,),
            Icon(Icons.person, color: Colors.white,),
          ],
          backgroundColor: colors[index],
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          index: index,
          buttonBackgroundColor: colors[index],
          color:const Color(0xff6c63ff),
          onTap: (value) {
            setState(() {
              index = value;
            });
          }),
    );
  }
}