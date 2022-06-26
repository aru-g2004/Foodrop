import 'package:flutter/material.dart';


class confirm extends StatefulWidget {
  const confirm({Key? key}) : super(key: key);

  @override
  _confirmState createState() => _confirmState();
}

class _confirmState extends State<confirm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://i.ibb.co/NKML1nH/Why-become-a-Foodropper-5.png'),
            fit: BoxFit.cover,
          )),

      child: Column(
          children: [

            SizedBox(
              height: 650,
              width: 100,
            ),
            SizedBox(
              height: 50,
              width: 500,
              child: FlatButton(
                color: Colors.transparent,
                onPressed: () {
                  Navigator.pushNamed(context, '/upload');
                }, child: Text(""),),
            ),
          ]),





    );
  }
}
