import 'package:flutter/material.dart';
import 'package:foodrop/main.dart';

class volunteerHours extends StatefulWidget {
  const volunteerHours({Key? key}) : super(key: key);

  @override
  _volunteerHoursState createState() => _volunteerHoursState();
}

class _volunteerHoursState extends State<volunteerHours> {
  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://media.giphy.com/media/yGVH6swAWSHLxeCrZj/giphy.gif'),
            fit: BoxFit.cover,
          )),


      child:
      Column(
          children: [

            SizedBox(
              height: 670,
              width: 100,
            ),
      SizedBox(
        height: 50,
        width: 500,
        child: FlatButton(
          color: Colors.transparent,
          onPressed: () {
            Navigator.pushNamed(context, '/loggedIn');
          }, child: Text(""),),
      ),








    ]));
  }
}

