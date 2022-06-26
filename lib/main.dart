import 'package:flutter/material.dart';
import 'package:foodrop/pickUp.dart';
import 'package:foodrop/submissionConfirmation.dart';
import 'package:foodrop/upload.dart';
import 'package:foodrop/volunteerHours.dart';
import 'package:foodrop/why.dart';
import 'confirm.dart';
import 'loading.dart';
import 'loggedIn.dart';
import 'login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/loading',
    routes: {


      '/loading': (context) => loading(),
      '/login' : (context) => login(),
      '/why' : (context) => why(),
      '/loggedIn' : (context) => loggedIn(),
      '/pickUp': (context) => pickUp(),
      '/confirm':(context) => confirm(),
      '/upload' :(context) => upload(),
      '/subConfirm' : (context) => submissionConfirmation(),
      '/vol': (context) => volunteerHours(),

    },
  ));
}

Widget logo(double height, double width) {
  return Image.network(
    'https://i.ibb.co/2M13Cnw/clear-bg-foodrop-1.png',
    height: height, width: width,

  );
}


Widget image(String image) {
  return Image.network(
    image

  );
}