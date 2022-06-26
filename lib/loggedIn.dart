import 'package:flutter/material.dart';
import 'package:foodrop/why.dart';

import 'HexColor.dart';

class loggedIn extends StatefulWidget {
  const loggedIn({Key? key}) : super(key: key);

  @override
  _loggedInState createState() => _loggedInState();
}

class _loggedInState extends State<loggedIn> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://i.ibb.co/s3LjrgY/Why-become-a-Foodropper-1.png'),
            fit: BoxFit.cover,
          ),
        ),
child: Column(
  children: [

SizedBox(
  height: 310,
),

     Row(
       children: [
         SizedBox(
           width: 20,
         ),
         FlatButton(
           color: Colors.transparent,
           onPressed: () {
             Navigator.pushNamed(context, '/pickUp');
           }, child: Text(""),),
         SizedBox(
           width: 20,
         ),
         SizedBox(
           height: 40,
           width: 180,
           child: Card(
             elevation: 0,
             color: HexColor.fromHex('#FFFFEE'),
             child: TextField(
               obscureText: false,
             ),
           ),
         ),

       ],


     )



  ],


),








    );
  }
}
