import 'package:flutter/material.dart';


class pickUp extends StatefulWidget {
  const pickUp({Key? key}) : super(key: key);

  @override
  _pickUpState createState() => _pickUpState();
}

class _pickUpState extends State<pickUp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://i.ibb.co/z6WzNK7/Why-become-a-Foodropper-4.png'),
          fit: BoxFit.cover,
        )),

        child: Column(
          children: [

          SizedBox(
          height: 200,
            width: 500,
        ),
        SizedBox(
          height: 50,
          width: 500,
          child: FlatButton(
            color: Colors.transparent,
            onPressed: () {
              Navigator.pushNamed(context, '/confirm');
            }, child: Text(""),),
        ),
      ]));
  }
}
